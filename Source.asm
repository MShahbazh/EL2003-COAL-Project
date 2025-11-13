; PRESS 'S' FOR GOING DOWN AND 'W' FOR GOING UP, 'D' SE FILHAAL CLRSCR HOTA HAI 
; GetMaxXY screen ki max width aur height lene ke liye hai taake terminal ko full screen karne per bhi center per aaye | full screen karke D,S ya W click karne per clrscr hojaaye ga
; GotoXY, cursor ki X aur Y position handle karta hai. 
; SetTextColor, Text ka color set karta hai both Background and Foreground, WHITE aur YELLOW abhi us ki values store karte hain

INCLUDE Irvine32.inc
.data
	t1 BYTE " ============================================================================",0
	t2 BYTE "||                                                                          ||",0		
    t3 BYTE "||         ████████    ████████    ████████    ████████    ██    ██         ||",0
	t4 BYTE "||            ██          ██       ██          ██          ██    ██         ||",0
	t5 BYTE "||            ██          ██       ██          ████████    ██    ██         ||",0
	t6 BYTE "||            ██          ██       ██                ██    ██    ██         ||",0
	t7 BYTE "||            ██       ████████    ████████    ████████    ████████         ||",0
	t8 BYTE "||                                                                          ||",0
	t9 BYTE " ============================================================================",0
	t10 BYTE "TIC TAC TOE",0
	t11 BYTE "SUDOKU",0
	t12 BYTE "EXIT",0
	t13 BYTE "-----> ",0
	main_title DWORD OFFSET t1, OFFSET t2, OFFSET t3 ,OFFSET t4, OFFSET t5, OFFSET t6, OFFSET t7, OFFSET t8 ,OFFSET t9, OFFSET t10, OFFSET t11, OFFSET t12
	max_width BYTE ?
	max_height BYTE ?
	option_flag DWORD 0
	YELLOW = 14
	WHITE = 15
.code

; YEH PROCEDURE POORA INITIAL MENU PRINT KARE GA

PRINTING_MENU PROC
	printed:
	mov eax, WHITE
	call SetTextColor
	call GetMaxXY
	mov max_width, dl
	mov max_height, ah
	mov dh, max_height
	sub dh, 19
	shr dh, 1
	mov al, max_width
	inc al
	sub al, LENGTHOF t1
	shr al, 1
	mov ecx, LENGTHOF main_title
	sub ecx, 3
	mov ebx, 0
	push dx
	call crlf
	
	; YEH LOOP TITLE PRINT KARNE KE LIYE HAI

	L1:
		pop dx
		inc dh
		mov dl,al
		push dx 
		call crlf
		call Gotoxy
		mov edx, main_title[ebx]
		call WriteString
		add ebx, 4
	loop L1
	call crlf
	mov ecx, 0
	mov ebx, 36

	; YEH LOOP 3 OPTIONS KO SAMBHALTA HAI 
	
	L2:
		mov eax, WHITE
		call SetTextColor
		cmp ecx, 3
		je last
		pop dx
		call crlf
		mov al, max_width
		sub al, LENGTHOF t10
		shr al, 1
		mov dl, al 
		add dh, 3
		push dx
		call Gotoxy

		; THIS IS THE SETUP FOR -----> OPTION TARGETTING 

		cmp option_flag, ecx
		jne go
		mov eax, YELLOW 
		call SetTextColor
		mov al, max_width
		sub al, LENGTHOF t10
		shr al, 1
		mov dl, al 
		sub dl, LENGTHOF t13
		inc dl
		call Gotoxy
		mov edx, OFFSET t13
		call WriteString

		go:
		mov edx, main_title[ebx]
		call WriteString
		call crlf
		add ebx, 4
		inc ecx
	jmp L2

	
	last:
		call ReadChar
	cmp al, 'D'
	jne go_s
		call clrscr
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,2
		jge end_p
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne end_p
		cmp option_flag, 0
		jle end_p
		dec option_flag
		call clrscr
	end_p:
	jmp printed
	ret
PRINTING_MENU ENDP

main PROC 

	; ABHI FILHAAL GAME LOOP PRINTING_MENU KE ANDER HAI printed: NAME SE, WHICH IS INFINITE LOOP, MEIN NE ABHI EXIT KA OPTION ADD NHI KIYA 

	call PRINTING_MENU	
exit
main ENDP
END main 
