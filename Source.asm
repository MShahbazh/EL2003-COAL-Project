; PRESS 'S' FOR GOING DOWN AND 'W' FOR GOING UP, 'D' SE FILHAAL CLRSCR HOTA HAI, AUR 'A' SE ACCEPT THE OPTION (ABHI SIRF END PROGRAM) 
; GetMaxXY screen ki max width aur height lene ke liye hai taake terminal ko full screen karne per bhi center per aaye | full screen karke D,S ya W click karne per clrscr hojaaye ga
; GotoXY, cursor ki X aur Y position handle karta hai. 
; SetTextColor, Text ka color set karta hai both Background and Foreground, WHITE aur YELLOW abhi us ki values store karte hain

INCLUDE Irvine32.inc
.data
	t1 BYTE " ============================================================================",0
	t2 BYTE "||                                                                          ||",0		
    t3 BYTE "||         ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ    ÛÛ    ÛÛ         ||",0
	t4 BYTE "||            ÛÛ          ÛÛ       ÛÛ          ÛÛ          ÛÛ    ÛÛ         ||",0
	t5 BYTE "||            ÛÛ          ÛÛ       ÛÛ          ÛÛÛÛÛÛÛÛ    ÛÛ    ÛÛ         ||",0
	t6 BYTE "||            ÛÛ          ÛÛ       ÛÛ                ÛÛ    ÛÛ    ÛÛ         ||",0
	t7 BYTE "||            ÛÛ       ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ         ||",0
	t8 BYTE "||                                                                          ||",0
	t9 BYTE " ============================================================================",0
	t10 BYTE "TIC TAC TOE",0
	t11 BYTE "SUDOKU",0
	t12 BYTE "EXIT",0
	t13 BYTE "-----> ",0
	game_options BYTE LENGTHOF t10, LENGTHOF t11, LENGTHOF t12
	main_title DWORD OFFSET t1, OFFSET t2, OFFSET t3 ,OFFSET t4, OFFSET t5, OFFSET t6, OFFSET t7, OFFSET t8 ,OFFSET t9, OFFSET t10, OFFSET t11, OFFSET t12

	q1 BYTE " ==================================================================================",0
	q2 BYTE "||                                                                                ||",0		
    q3 BYTE "||  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  |  ÛÛÛÛÛÛ   ÛÛÛÛ   ÛÛÛÛÛÛ  |  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  ||",0
	q4 BYTE "||    ÛÛ      ÛÛ    ÛÛ      |    ÛÛ    ÛÛ  ÛÛ  ÛÛ      |    ÛÛ    ÛÛ  ÛÛ  ÛÛ      ||",0
	q5 BYTE "||    ÛÛ      ÛÛ    ÛÛ      |    ÛÛ    ÛÛÛÛÛÛ  ÛÛ      |    ÛÛ    ÛÛ  ÛÛ  ÛÛÛÛÛÛ  ||",0
	q6 BYTE "||    ÛÛ      ÛÛ    ÛÛ      |    ÛÛ    ÛÛ  ÛÛ  ÛÛ      |    ÛÛ    ÛÛ  ÛÛ  ÛÛ      ||",0
	q7 BYTE "||    ÛÛ    ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  |    ÛÛ    ÛÛ  ÛÛ  ÛÛÛÛÛÛ  |    ÛÛ    ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  ||",0
	q8 BYTE "||                                                                                ||",0
	q9 BYTE " ==================================================================================",0
	q10 BYTE "Play",0
	q11 BYTE "Back ",0
	ttt_title_one DWORD OFFSET q1, OFFSET q2, OFFSET q3, OFFSET q4, OFFSET q5, OFFSET q6, OFFSET q7, OFFSET q8, OFFSET q9, OFFSET q10, OFFSET q11
	ttt_game_options BYTE LENGTHOF q10, LENGTHOF q11

	s1 BYTE " ------------------------------------------------------------------------------------------------------ ",0 
	s2 BYTE "|                                                                                                      |",0
	s3 BYTE "| ÛÛÛÛÛÛ ÛÛ  ÛÛ ÛÛÛÛÛÛ ÛÛÛÛÛÛ                                                                          |",0
	s4 BYTE "|   ÛÛ   ÛÛ  ÛÛ ÛÛ       ÛÛ                                                                            |",0
	s5 BYTE "|   ÛÛ   ÛÛ  ÛÛ ÛÛÛÛÛÛ   ÛÛ                                                                            |",0
	s6 BYTE "|   ÛÛ   ÛÛ  ÛÛ     ÛÛ   ÛÛ                                                                            |",0
	s7 BYTE "|   ÛÛ   ÛÛÛÛÛÛ ÛÛÛÛÛÛ ÛÛÛÛÛÛ                                                                          |",0
	s8 BYTE "|                                                                                                      |",0
	s9 BYTE "|                              ÛÛÛÛÛÛ  ÛÛ     ÛÛ                                                       |",0
	s10 BYTE "|                                ÛÛ  ÛÛ  ÛÛ ÛÛ  ÛÛ                                                     |",0
	s11 BYTE "|                                ÛÛ  ÛÛ  ÛÛ ÛÛ  ÛÛ                                                     |",0
	s12 BYTE "|                             ÛÛ ÛÛ  ÛÛÛÛÛÛ ÛÛÛÛÛÛ                                                     |",0
	s13 BYTE "|                             ÛÛÛÛÛ  ÛÛ  ÛÛ ÛÛ  ÛÛ                                                     |",0
	s14 BYTE "|                                                                                                      |",0
	s15 BYTE "|                                                   ÛÛÛÛÛÛ   ÛÛ   ÛÛ  ÛÛ ÛÛÛÛÛÛ                        |",0
	s16 BYTE "|                                                   ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛ                            |",0
	s17 BYTE "|                                                   ÛÛÛÛÛÛ ÛÛ  ÛÛ ÛÛÛÛÛÛ ÛÛÛÛÛÛ                        |",0
	s18 BYTE "|                                                   ÛÛ  ÛÛ ÛÛÛÛÛÛ ÛÛ  ÛÛ ÛÛ                            |",0
	s19 BYTE "|                                                   ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛÛÛÛÛ                        |",0
	s20 BYTE "|                                                                                                      |",0
	s21 BYTE "|                                                                                ÛÛ  ÛÛ ÛÛÛÛÛÛ  ÛÛÛÛÛÛ |",0
	s22 BYTE "|                                                                                ÛÛ  ÛÛ ÛÛ  ÛÛ      ÛÛ |",0
	s23 BYTE "|                                                                                ÛÛÛÛÛÛ ÛÛ  ÛÛ  ÛÛÛÛÛÛ |",0
	s24 BYTE "|                                                                                ÛÛ  ÛÛ ÛÛ  ÛÛ  ÛÛ     |",0
	s25 BYTE "|                                                                                ÛÛ  ÛÛ ÛÛÛÛÛÛ         |",0
	s26 BYTE "|                                                                                               ÛÛ     |",0
	s27 BYTE "|                                                                                                      |",0
	s28 BYTE " ------------------------------------------------------------------------------------------------------ ",0 
	ending DWORD OFFSET s1, OFFSET s2, OFFSET s3, OFFSET s4, OFFSET s5, OFFSET s6, OFFSET s7, OFFSET s8, OFFSET s9, OFFSET s10, OFFSET s11, OFFSET s12, OFFSET s13, OFFSET s14, OFFSET s15, OFFSET s16, OFFSET s17, OFFSET s18, OFFSET s19, OFFSET s20, OFFSET s21, OFFSET s22, OFFSET s23, OFFSET s24, OFFSET s25, OFFSET s26, OFFSET s27, OFFSET s28
	
	r1 BYTE " ======================================================================================================= ",0
	r2 BYTE "||                                                                                                      ||",0
	r3 BYTE "||                      ÛÛÛÛÛÛÛÛ  ÛÛ    ÛÛ  ÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ                      ||",0
	r4 BYTE "||                      ÛÛ        ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛ  ÛÛ    ÛÛ    ÛÛ                      ||",0
	r5 BYTE "||                      ÛÛÛÛÛÛÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛÛÛ      ÛÛ    ÛÛ                      ||",0
	r6 BYTE "||                            ÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛ    ÛÛ  ÛÛ  ÛÛ    ÛÛ    ÛÛ                      ||",0
	r7 BYTE "||                      ÛÛÛÛÛÛÛÛ  ÛÛÛÛÛÛÛÛ  ÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ  ÛÛ    ÛÛ  ÛÛÛÛÛÛÛÛ                      ||",0
	r8 BYTE "||                                                                                                      ||",0
	r9 BYTE " ======================================================================================================= ",0
	r10 BYTE "Easy",0
	r11 BYTE "Medium",0
	r12 BYTE "Hard",0
	r13 BYTE "Back",0
	sud_title DWORD OFFSET r1, OFFSET r2, OFFSET r3, OFFSET r4, OFFSET r5, OFFSET r6, OFFSET r7, OFFSET r8, OFFSET r9, OFFSET r10, OFFSET r11, OFFSET r12, OFFSET r13
	sud_game_options BYTE LENGTHOF r10, LENGTHOF r11, LENGTHOF r12, LENGTHOF r13

	max_width BYTE ?
	max_height BYTE ?
	option_flag DWORD 0
	YELLOW = 14
	WHITE = 15
	RED = 4
	ending_delay REAL8 100.0

	
	d BYTE "DEBUGGED",0
.code


; ---------------------------------------------- PRINTING_MENU PROC ---------------------------------------------------

PRINTING_MENU PROC
	call clrscr
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
	mov esi, 0

	; YEH LOOP 3 OPTIONS KO SAMBHALTA HAI 
	
	L2:
		mov eax, WHITE
		call SetTextColor
		cmp ecx, 3
		je last
		pop dx
		call crlf
		mov al, max_width
		sub al, game_options[esi]
		shr al, 1
		mov dl, al 
		add dh, 3
		push dx
		call Gotoxy
		cmp option_flag, ecx
		jne go

		cmp esi, 2

		jne default
			mov eax, RED
			jmp set_color
		default:
			mov eax, YELLOW 
		set_color:
		call SetTextColor
		mov al, max_width
		sub al, game_options[esi]
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
		inc esi
	jmp L2


	last:
		pop dx
		call ReadChar
	cmp al, 'D'
	jne go_s
		call clrscr
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,2
		jge to_end
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne go_accept
		cmp option_flag, 0
		jle to_end
		dec option_flag
		call clrscr
	go_accept:
		cmp al, 'A'
		jne to_end
		jmp end_printing
	to_end:
	jmp printed
	end_printing:
	ret
PRINTING_MENU ENDP

; ---------------------------------------------- TTT (tic tac toe printing menu) PROC ---------------------------------------------------


TTT PROC
	call clrscr
	printed:
		mov eax, WHITE
		call SetTextColor
		call GetMaxXY
		mov max_width, dl
		mov max_height, al
		mov dh, 0
		sub dl, LENGTHOF q1
		shr dl, 1
		mov max_height, ah
		mov dh, max_height
		sub dh, 19
		shr dh, 1
		push dx
		
		mov ecx, 9
		mov ebx, 0
		L1:
			pop dx
			inc dh
			push dx 
			call crlf
			call Gotoxy
			mov edx, ttt_title_one[ebx]
			call WriteString
			add ebx, 4
		loop L1

		call crlf
		mov ecx, 0 
		mov esi, 0
		mov ebx, 36
		L2:
			mov eax, WHITE
			call SetTextColor
			cmp ecx, 2
			je last 
			pop dx 
			call crlf
			mov al, max_width
			sub al, ttt_game_options[esi]
			shr al, 1
			mov dl, al 
			add dh, 3
			push dx
			call Gotoxy

			cmp option_flag, ecx
			jne go

			cmp esi, 1
			jne default
			mov eax, RED
			jmp set_color
			default:
			mov eax, YELLOW 
			set_color:
			call SetTextColor
			mov al, max_width
			sub al, ttt_game_options[esi]
			shr al, 1
			mov dl, al 
			sub dl, LENGTHOF t13
			inc dl
			call Gotoxy
			mov edx, OFFSET t13
			call WriteString

			go:
			mov edx, ttt_title_one[ebx]
			call WriteString
			call crlf
			add ebx, 4
			inc ecx
			inc esi 
		jmp L2
		last:
		pop dx
		call ReadChar
	cmp al, 'D'
	jne go_s
		call clrscr
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,1
		jge to_end
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne go_accept
		cmp option_flag, 0
		jle to_end
		dec option_flag
		call clrscr
	go_accept:
		cmp al, 'A'
		jne to_end
		jmp end_printing
	to_end:
	jmp printed
	end_printing:
	ret
TTT ENDP

; ---------------------------------------------- SUDOKU MENU PRINTING PROC ---------------------------------------------------

SUDOKU PROC
call clrscr
	printed:
		mov eax, WHITE
		call SetTextColor
		call GetMaxXY
		mov max_width, dl
		mov max_height, al
		mov dh, 0
		sub dl, LENGTHOF r1
		shr dl, 1
		mov max_height, ah
		mov dh, max_height
		sub dh, 20
		shr dh, 1
		push dx
		
		mov ecx, 9
		mov ebx, 0
		L1:
			pop dx
			inc dh
			push dx 
			call crlf
			call Gotoxy
			mov edx, sud_title[ebx]
			call WriteString
			add ebx, 4
		loop L1

		call crlf
		mov ecx, 0 
		mov esi, 0
		mov ebx, 36
		L2:
			mov eax, WHITE
			call SetTextColor
			cmp ecx, 4
			je last 
			pop dx 
			call crlf
			mov al, max_width
			sub al, sud_game_options[esi]
			shr al, 1
			mov dl, al 
			add dh, 3
			push dx
			call Gotoxy

			cmp option_flag, ecx
			jne go

			cmp esi, 3
			jne default
			mov eax, RED
			jmp set_color
			default:
			mov eax, YELLOW 
			set_color:
			call SetTextColor
			mov al, max_width
			sub al, sud_game_options[esi]
			shr al, 1
			mov dl, al 
			sub dl, LENGTHOF t13
			inc dl
			call Gotoxy
			mov edx, OFFSET t13
			call WriteString

			go:
			mov edx, sud_title[ebx]
			call WriteString
			call crlf
			add ebx, 4
			inc ecx
			inc esi 
		jmp L2
		last:
		pop dx
		call ReadChar
	cmp al, 'D'
	jne go_s
		call clrscr
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,3
		jge to_end
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne go_accept
		cmp option_flag, 0
		jle to_end
		dec option_flag
		call clrscr
	go_accept:
		cmp al, 'A'
		jne to_end
		jmp end_printing
	to_end:
	jmp printed
	end_printing:
	ret

SUDOKU ENDP

; ---------------------------------------------- ENDING (ending screen printing block) PROC ---------------------------------------------------


ENDING_SCREEN PROC 
	call clrscr
	mov eax, WHITE
	call SetTextColor
	call GetMaxXY
	mov max_width, dl
	mov max_height, al
	mov dh, 0
	sub dl, LENGTHOF s1
	shr dl, 1
	mov max_height, ah
	mov dh, max_height
	sub dh, LENGTHOF ending
	shr dh, 1
	push dx
		
	mov ecx, LENGTHOF ending
	mov ebx, 0
	L1:
		pop dx
		inc dh
		push dx 
		call crlf
		call Gotoxy
		mov edx, ending[ebx]
		call WriteString
		add ebx, 4
	loop L1
	pop dx
	;fld ending_delay -------------------------> DELAY HAS SOME ERROR PLEASE FIX IT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	;call Delay
	call crlf
	ret
ENDING_SCREEN ENDP

; ---------------------------------------------- MAIN PROC ---------------------------------------------------

main PROC 



	game_loop:

	call PRINTING_MENU
	cmp option_flag, 0
	jne check_second
		call TTT
		cmp option_flag, 1
		mov option_flag, 0
		jmp Last
	check_second:
	cmp option_flag, 1
	jne check_third
		call SUDOKU 
		cmp option_flag, 3
		mov option_flag, 0
		jmp Last
	check_third:
		call ENDING_SCREEN
		jmp end_program
	Last:
	jmp game_loop

end_program:
	exit
main ENDP
END main 
