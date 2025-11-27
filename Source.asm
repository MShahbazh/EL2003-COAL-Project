; PRESS 'S' FOR GOING DOWN AND 'W' FOR GOING UP, 'D' SE FILHAAL CLRSCR HOTA HAI, AUR 'A' SE ACCEPT THE OPTION (ABHI SIRF END PROGRAM) 
; GetMaxXY screen ki max width aur height lene ke liye hai taake terminal ko full screen karne per bhi center per aaye | full screen karke D,S ya W click karne per clrscr hojaaye ga
; GotoXY, cursor ki X aur Y position handle karta hai. 
; SetTextColor, Text ka color set karta hai both Background and Foreground, WHITE aur YELLOW abhi us ki values store karte hain

INCLUDE Irvine32.inc
.data
index  dword  ? 
	t1 BYTE "============================================================================",0
	t2 BYTE "|                                                                          |",0		
    t3 BYTE "|         ÛÛÛÛÛÛÛÛ»   ÛÛÛÛÛÛÛÛ»   ÛÛÛÛÛÛÛÛ»   ÛÛÛÛÛÛÛÛ»   ÛÛ»   ÛÛ»        |",0
	t4 BYTE "|            ÛÛ ÉÍ¼      ÛÛ ÉÍ¼   ÛÛ ÉÍÍÍÍ¼   ÛÛÉÍÍÍÍÍ¼   ÛÛº   ÛÛº        |",0
	t5 BYTE "|            ÛÛ º        ÛÛ º     ÛÛ º        ÛÛÛÛÛÛÛÛ    ÛÛº   ÛÛº        |",0
	t6 BYTE "|            ÛÛ º        ÛÛ ÈÍ»   ÛÛ ÈÍÍÍÍ»   ÈÍÍÍÍÍÛÛ    ÛÛÈÍÍÍÛÛº        |",0
	t7 BYTE "|            ÛÛ º     ÛÛÛÛÛÛÛÛº   ÛÛÛÛÛÛÛÛº   ÛÛÛÛÛÛÛÛ»    ÛÛÛÛÛÛÉ¼        |",0
	t8 BYTE "|             ÈÍ¼     ÈÍÍÍÍÍÍÍ¼   ÈÍÍÍÍÍÍÍ¼   ÈÍÍÍÍÍÍÍ¼    ÈÍÍÍÍÍ¼         |",0
	t9 BYTE "============================================================================",0
	t10 BYTE "TIC TAC TOE",0
	t11 BYTE "SUDOKU",0
	t12 BYTE "EXIT",0
	t13 BYTE "-----> ",0
	game_options BYTE LENGTHOF t10, LENGTHOF t11, LENGTHOF t12
	main_title DWORD OFFSET t1, OFFSET t2, OFFSET t3 ,OFFSET t4, OFFSET t5, OFFSET t6, OFFSET t7, OFFSET t8 ,OFFSET t9, OFFSET t10, OFFSET t11, OFFSET t12

	q1 BYTE " ==================================================================================",0
	q2 BYTE "||                                                                                ||",0		
    q3 BYTE "||  ÛÛÛÛÛÛ» ÛÛÛÛÛÛ» ÛÛÛÛÛÛ» |  ÛÛÛÛÛÛ»  ÛÛÛÛ»  ÛÛÛÛÛÛ» |  ÛÛÛÛÛÛ» ÛÛÛÛÛÛ» ÛÛÛÛÛÛ» ||",0
	q4 BYTE "||    ÛÛ É¼   ÛÛ É¼ ÛÛ ÉÍÍ¼ |    ÛÛ É¼ ÛÛÉÍÛÛ» ÛÛ ÉÍÍ¼ |    ÛÛ É¼ ÛÛ  ÛÛº ÛÛÉÍÍÍ¼ ||",0
	q5 BYTE "||    ÛÛ º    ÛÛ º  ÛÛ º    |    ÛÛ º  ÛÛÛÛÛÛº ÛÛ º    |    ÛÛ º  ÛÛ  ÛÛº ÛÛÛÛÛ»  ||",0
	q6 BYTE "||    ÛÛ º    ÛÛ È» ÛÛ ÈÍÍ» |    ÛÛ º  ÛÛÉÍÛÛº ÛÛ ÈÍÍ» |    ÛÛ º  ÛÛ  ÛÛº ÛÛÉÍÍ¼  ||",0
	q7 BYTE "||    ÛÛ º  ÛÛÛÛÛÛº ÛÛÛÛÛÛº |    ÛÛ º  ÛÛº ÛÛº ÛÛÛÛÛÛº |    ÛÛ º  ÛÛÛÛÛÛº ÛÛÛÛÛÛ» ||",0
	q8 BYTE "||     ÈÍ¼  ÈÍÍÍÍÍ¼ ÈÍÍÍÍÍ¼       ÈÍ¼  ÈÍ¼ ÈÍ¼ ÈÍÍÍÍÍ¼       ÈÍ¼  ÈÍÍÍÍÍ¼ ÈÍÍÍÍÍ¼ ||",0
	q9 BYTE " ==================================================================================",0
	q10 BYTE "PLAY",0
	q11 BYTE "BACK ",0
	ttt_title_one DWORD OFFSET q1, OFFSET q2, OFFSET q3, OFFSET q4, OFFSET q5, OFFSET q6, OFFSET q7, OFFSET q8, OFFSET q9, OFFSET q10, OFFSET q11
	ttt_game_options BYTE LENGTHOF q10, LENGTHOF q11

	 s1 BYTE " -------------------------------------------------------------------------------------------------------- ",0 
	 s2 BYTE "|                                                                                                        |",0
	 s3 BYTE "| ÛÛÛÛÛÛ  ÛÛ  ÛÛ  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ                                                                         |",0
	 s4 BYTE "|   ÛÛ    ÛÛ  ÛÛ  ÛÛ        ÛÛ                                                                           |",0
	 s5 BYTE "|   ÛÛ    ÛÛ  ÛÛ  ÛÛÛÛÛÛ    ÛÛ                                                                           |",0
	 s6 BYTE "|   ÛÛ    ÛÛ  ÛÛ      ÛÛ    ÛÛ                                                                           |",0
	 s7 BYTE "|   ÛÛ    ÛÛÛÛÛÛ  ÛÛÛÛÛÛ  ÛÛÛÛÛÛ                                                                         |",0
	 s8 BYTE "|                                                                                                        |",0
	 s9 BYTE "|                              ÛÛÛÛÛÛ    ÛÛ       ÛÛ                                                     |",0
	s10 BYTE "|                                ÛÛ    ÛÛ  ÛÛ   ÛÛ  ÛÛ                                                   |",0
	s11 BYTE "|                                ÛÛ    ÛÛ  ÛÛ   ÛÛ  ÛÛ                                                   |",0
	s12 BYTE "|                             ÛÛ ÛÛ    ÛÛÛÛÛÛ   ÛÛÛÛÛÛ                                                   |",0
	s13 BYTE "|                             ÛÛÛÛÛ    ÛÛ  ÛÛ   ÛÛ  ÛÛ                                                   |",0
	s14 BYTE "|                                                                                                        |",0
	s15 BYTE "|                                                 ÛÛÛÛÛÛÛÛ     ÛÛ     ÛÛ  ÛÛ   ÛÛÛÛÛÛ                    |",0
	s16 BYTE "|                                                   ÛÛ  ÛÛ   ÛÛ  ÛÛ   ÛÛ  ÛÛ   ÛÛ                        |",0
	s17 BYTE "|                                                   ÛÛÛÛÛÛ   ÛÛ  ÛÛ   ÛÛÛÛÛÛ   ÛÛÛÛÛ                     |",0
	s18 BYTE "|                                                   ÛÛ  ÛÛ   ÛÛÛÛÛÛ   ÛÛ  ÛÛ   ÛÛ                        |",0
	s19 BYTE "|                                                   ÛÛ  ÛÛ   ÛÛ  ÛÛ   ÛÛ  ÛÛ   ÛÛÛÛÛÛ                    |",0
	s20 BYTE "|                                                                                                        |",0
	s21 BYTE "|                                                                                ÛÛ  ÛÛ   ÛÛÛÛÛÛ  ÛÛÛÛÛÛ |",0
	s22 BYTE "|                                                                                ÛÛ  ÛÛ   ÛÛ  ÛÛ      ÛÛ |",0
	s23 BYTE "|                                                                                ÛÛÛÛÛÛ   ÛÛ  ÛÛ  ÛÛÛÛÛÛ |",0
	s24 BYTE "|                                                                                ÛÛ  ÛÛ   ÛÛ  ÛÛ  ÛÛ     |",0
	s25 BYTE "|                                                                                ÛÛ  ÛÛ   ÛÛÛÛÛÛ         |",0
	s26 BYTE "|                                                                                                 ÛÛ     |",0
	s27 BYTE "|                                                                                                        |",0
	s28 BYTE " -------------------------------------------------------------------------------------------------------- ",0 
	ending DWORD OFFSET s1, OFFSET s2, OFFSET s3, OFFSET s4, OFFSET s5, OFFSET s6, OFFSET s7, OFFSET s8, OFFSET s9, OFFSET s10, OFFSET s11, OFFSET s12, OFFSET s13, OFFSET s14, OFFSET s15, OFFSET s16, OFFSET s17, OFFSET s18, OFFSET s19, OFFSET s20, OFFSET s21, OFFSET s22, OFFSET s23, OFFSET s24, OFFSET s25, OFFSET s26, OFFSET s27, OFFSET s28
	
	r1 BYTE " ======================================================================================================= ",0
	r2 BYTE "||                                                                                                      ||",0
	r3 BYTE "||                      ÛÛÛÛÛÛÛÛ» ÛÛ»   ÛÛ» ÛÛÛÛÛÛ»    ÛÛÛÛÛÛ»  ÛÛ»   ÛÛ» ÛÛ»   ÛÛ»                     ||",0
	r4 BYTE "||                      ÛÛÉÍÍÍÍÍ¼ ÛÛº   ÛÛº ÛÛ ÉÍÍÛÛ  ÛÛ ÉÍÍÛÛ  ÛÛº ÛÛÉÍ¼ ÛÛº   ÛÛº                     ||",0
	r5 BYTE "||                      ÛÛÛÛÛÛÛÛ  ÛÛº   ÛÛº ÛÛ º  ÛÛ  ÛÛ º  ÛÛ  ÛÛÛÛÛÉ¼   ÛÛº   ÛÛº                     ||",0
	r6 BYTE "||                      ÈÍÍÍÍÍÛÛ  ÛÛÈÍÍÍÛÛº ÛÛ ÈÍÍÛÛ  ÛÛ ÈÍÍÛÛ  ÛÛÉÍÛÛ»   ÛÛÈÍÍÍÛÛº                     ||",0
	r7 BYTE "||                      ÛÛÛÛÛÛÛÛ»  ÛÛÛÛÛÛÉ¼ ÛÛÛÛÛÛ¼    ÛÛÛÛÛÛ¼  ÛÛº   ÛÛ»  ÛÛÛÛÛÛÉ¼                     ||",0
	r8 BYTE "||                      ÈÍÍÍÍÍÍÍ¼  ÈÍÍÍÍÍ¼  ÈÍÍÍÍ¼     ÈÍÍÍ¼    ÈÍ¼   ÈÍ¼  ÈÍÍÍÍÍ¼                      ||",0
	r9 BYTE " ======================================================================================================= ",0
	r10 BYTE "EASY",0
	r11 BYTE "MEDIUM",0
	r12 BYTE "HARD",0
	r13 BYTE "BACK",0
	sud_title DWORD OFFSET r1, OFFSET r2, OFFSET r3, OFFSET r4, OFFSET r5, OFFSET r6, OFFSET r7, OFFSET r8, OFFSET r9, OFFSET r10, OFFSET r11, OFFSET r12, OFFSET r13
	sud_game_options BYTE LENGTHOF r10, LENGTHOF r11, LENGTHOF r12, LENGTHOF r13

	sud_border BYTE " ----------- ----------- ----------- ",0
	sud_space BYTE "|           |           |           |",0

	max_width BYTE ?
	max_height BYTE ?
	option_flag DWORD 0
	YELLOW = 14
	WHITE = 15
	RED = 4
	BLUE =1  
	BLACK=0
	ending_delay REAL8 100.0
	
	nameone BYTE "PLAYER 1 (MOVES FIRST)",0
	nametwo BYTE "PLAYER 2",0 
	namethree BYTE "Enter Option [ P : Play | B : Back | E : Edit ]: ",0
	enter_title DWORD OFFSET nameone, OFFSET nametwo, OFFSET namethree
	enter_title_length DWORD LENGTHOF nameone, LENGTHOF nametwo, LENGTHOF namethree
	max_size_name = 50
	player1 BYTE max_size_name+1 DUP(?)
	player2 BYTE max_size_name+1 DUP(?)
	
	

	
original_board BYTE '5','3','_','_','7','_','_','_','_'
            BYTE '6','_','_','1','9','5','_','_','_'
            BYTE '_','9','8','_','_','_','_','6','_'
			BYTE '8','_','_','_','6','_','_','_','3'
            BYTE '4','_','_','8','_','3','_','_','1'
            BYTE '7','_','_','_','2','_','_','_','6'
            BYTE '_','6','_','_','_','_','2','8','_'
            BYTE '_','_','_','4','1','9','_','_','5'
            BYTE '_','_','_','_','8','_','_','7','9'


	user_board BYTE 81 DUP('_')
	solution_board BYTE 81 DUP ('_')

	
.code


; ---------------------------------------------- PRINTING_MENU PROC ( W for selecting up, S for selecting down, A for accept, R for reload (clrscr and then print again)---------------------------------------------------

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
	cmp al, 'R'
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

; ---------------------------------------------- TTT (tic tac toe printing menu) ( W for selecting up, S for selecting down, A for accept, R for reload (clrscr and then print again) PROC ---------------------------------------------------


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
	cmp al, 'R'
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

; ---------------------------------------------- SUDOKU MENU PRINTING ( W for selecting up, S for selecting down, A for accept, R for reload (clrscr and then print again) PROC ---------------------------------------------------

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
	cmp al, 'R'
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

; ---------------------------------------------- SUDOKU PLAY (W for moving up, S for down, D for right, A for left, R for reload (clrscr, then print again, X for back (currently it ends program, will fix later) PROC ---------------------------------------------------
; Sudoku will display in easy option (for now)


SUDOKU_PLAY PROC 

	mov ecx, 0
	L1:
		cmp ecx, 81
		je M1
		mov al, original_board[ecx]
		mov user_board[ecx],al
		inc ecx
	jmp L1
	M1:
	mov ecx, 0
	set_cursor:
		cmp user_board[ecx],'_'
		je end_set_cursor
	inc ecx
	cmp ecx, 81
	je end_set_cursor
	jne set_cursor
	end_set_cursor:
	mov option_flag, ecx

	printed:
	mov ecx, 12
	mov ebx, 0
	call GetMaxXY
	mov max_width, dl 
	sub dl, LENGTHOF sud_border
	shr dl, 1
	push dx
	mov dh,0
	call GotoXY

	L2:
		pop dx
		inc dh
		call GotoXY
		push dx
		mov eax, WHITE
		call SetTextColor
		mov esi, ecx 
		mov eax, ecx 
		xor edx, edx
		mov edi, 4
		DIV edi 
		cmp edx, 0
		jne no_print_border
			mov al, ' '
			call WriteChar
			mov al, ' '
			call WriteChar
			mov ecx, 36
			mov edx, OFFSET sud_border
			call WriteString
			call crlf
			pop dx
			inc dh
			call GotoXY
			push dx
			mov al, ' '
			call WriteChar
			mov al, ' '
			call WriteChar
			mov edx, OFFSET sud_space
			call WriteString
			jmp last
		no_print_border:		

			mov ecx, 9
			L4:
				mov eax, ecx 
				mov edi, 3
				xor edx, edx 
				DIV edi 
				cmp edx, 0
				mov al, ' '
				call WriteChar
				mov al, ' '
				call WriteChar
				jne line_second
					mov al, '|'
					call WriteChar
					mov al, ' '
					call WriteChar
					mov al, ' '
					call WriteChar

				line_second:
					cmp original_board[ebx], '_'
					jne fixed
						cmp option_flag, ebx
							je set_blue
								mov eax, WHITE
								jmp set_color
							set_blue:
								mov eax, BLACK+(WHITE*16)
						set_color:
						call SetTextColor
						mov al, user_board[ebx]
						call WriteChar
						jmp L4end
					fixed:
						cmp option_flag, ebx
							je red_selected
								mov eax, RED
								jmp set_color_fixed
							red_selected:
								mov eax, RED+(WHITE*16)
						set_color_fixed:
						call SetTextColor
						mov al, original_board[ebx]
						call WriteChar
				L4end:
					mov eax, WHITE
					call SetTextColor
					inc ebx
			dec ecx 
			jnz L4
			mov al, ' '
			call WriteChar
			mov al, ' '
			call WriteChar
			mov eax, '|'
			call WriteChar
			call crlf
			pop dx
			inc dh
			call GotoXY
			push dx
			mov al, ' '
			call WriteChar
			mov al, ' '
			call WriteChar
			mov edx, OFFSET sud_space
			call WriteString
		last:
		call crlf
		mov ecx, esi
	dec ecx 
	jnz L2
	pop dx
	inc dh
	call GotoXY
	push dx
	mov al, ' '
	call WriteChar
	mov al, ' '
	call WriteChar
	mov edx, OFFSET sud_border
	call WriteString

	call ReadKey
	cmp al, 'R'
	jne back
		call clrscr
		jmp end_movement
	back:
	cmp al, 'X'
	jne check_for_right 
		call clrscr
		pop dx
		jmp end_printing
	check_for_right:
	cmp al, 'D'
		jne check_for_left	
			mov ecx, option_flag
			cmp ecx, 80
			je end_movement 
			inc ecx
			mov option_flag, ecx
			jmp end_movement 
	check_for_left:
	cmp al, 'A'
		jne check_for_up
		mov ecx, option_flag
		cmp ecx, 0
		je end_movement 
		dec ecx
		mov option_flag, ecx
		jmp end_movement 
	check_for_up:
	cmp al, 'W'
		jne check_for_down
		mov ecx, option_flag
		cmp ecx, 9
		jl end_movement 
		sub ecx, 9
		mov option_flag, ecx
		jmp end_movement 
	check_for_down:
	cmp al, 'S'
		jne assign_values
		mov ecx, option_flag
		cmp ecx, 71
		jg end_movement 
		add ecx, 9
		mov option_flag, ecx
		jmp end_movement 
	assign_values:
			mov ebx, option_flag        
			cmp original_board[ebx], '_'  ; THIS CHECKS IF THE PLACE WE ARE ON IS FIXED CELL OR NOT, IF YES THEN JUMP TO not_change OR ELSE CHANGE 
			jne not_change
				cmp al, '0'
				jl not_change
				cmp al, '9'
				jg not_change
				mov user_board[ebx],al
			not_change:
	end_movement:
	
	jump_to_printed:
	pop dx
	jmp printed
	end_printing:
	ret
SUDOKU_PLAY ENDP

; ---------------------------------------------- ENTRY_NAMES PROC for entring names in TIC TAC TOE players ---------------------------------------------------


ENTRY_NAMES PROC
call clrscr
	starting:
	mov ecx, 3
	mov ebx, 0
	call GetMaxXY
	mov max_width, dl 
	mov max_height, al 
	mov dh, max_height
	sub dh, 15
	shr dh, 1
	push dx 
	printed:
		pop dx
		add dh, 2
		push dx
		sub edx, enter_title_length[ebx]
		shr dl, 1
		call GotoXY
		mov edx, enter_title[ebx]
		call WriteString
		call crlf
		pop dx
			inc dh
		push dx
		sub edx, enter_title_length[0]
		sub edx, 10
		shr dl, 1
		call GotoXY
		mov edx, OFFSET t13
		call WriteString
		mov al, ' '
		call WriteChar
		cmp ecx, 3
		jne player2_entry
			mov edx, OFFSET player1
			jmp take_reading
		player2_entry:
			cmp ecx, 2
			jne player3_entry
			mov edx, OFFSET player2
		take_reading:
		mov edi, ecx
		mov ecx, max_size_name
		inc ecx
		call ReadString
		jmp no_end
		player3_entry:
			mov edi, ecx
			call ReadChar
			cmp al, 'P'
			jne check_E
				mov option_flag, 1
				jmp end_printed
			check_E:
			cmp al, 'E'
			jne go_back
				pop ax
				call clrscr
				jmp starting
			go_back:
				mov option_flag, 0
				jmp end_printed
		no_end:
		mov ecx, edi
		dec ecx
		add ebx, 4
		cmp ecx, 0
		je end_printed
	jmp printed
	end_printed:
	call crlf
	


	pop ax
	ret
ENTRY_NAMES ENDP

Checking proc
mov index  , ebx  
mov edi , offset solution_board 
mov esi , offset user_board 
add esi , index  
add edi , index  
mov eax  , [esi]
mov edx  , [edi]
cmp edx , eax  
je l1  
mov option_flag , 1 
jmp return 

l1  : 
mov option_flag , 0 
jmp return  


return : 
ret
Checking endp 
; ---------------------------------------------- MAIN PROC ---------------------------------------------------

main PROC 

	game_loop:
	mov option_flag, 0
	call PRINTING_MENU

	; -----> WHEN USER CHOOSE TIC TAC TOE (OPTION 1 OF MAIN MENU)

	tic_tac_toe_label:
	cmp option_flag, 0
	jne check_second
		call TTT
		cmp option_flag, 0
		jne game_loop
		call ENTRY_NAMES
		cmp option_flag, 1
		jne tic_tac_toe_label
		jmp end_program ;---> FOR NOW 

	; -----> WHEN USER CHOOSE SUDOKU (OPTION 2 OF MAIN MENU)

	check_second:
	cmp option_flag, 1
		jne check_third
		mov option_flag, 0
		call SUDOKU 
		
		; -----> WHEN USER CHOOSES EASY MODE OF SUDOKU 

		cmp option_flag, 0
			jne check_second_sudoku
 		call clrscr
			call SUDOKU_PLAY
			jmp end_program
	 check_second_sudoku:

		; ------> WHEN USER CHOSES BACK OF SUDOKU 

		cmp option_flag, 3
			mov option_flag, 0
			jmp Last
		
	; -----> WHEN USER CHOOSE EXIT (OPTION 3 OF MAIN MENU)
    
	check_third:
		call ENDING_SCREEN
		jmp end_program
	Last:
	jmp game_loop
	
end_program:
	exit
main ENDP
END main 
