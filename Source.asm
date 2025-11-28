INCLUDE Irvine32.inc
Includelib kernel32.lib

.data
	index DWORD ?
	
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
	s15 BYTE "|                                                 ÛÛÛÛÛÛÛÛ   ÛÛ   ÛÛ  ÛÛ ÛÛÛÛÛÛ                        |",0
	s16 BYTE "|                                                   ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛ  ÛÛ ÛÛ                            |",0
	s17 BYTE "|                                                   ÛÛÛÛÛÛ ÛÛ  ÛÛ ÛÛÛÛÛÛ ÛÛÛÛÛ                         |",0
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
	r3 BYTE "||                      ÛÛÛÛÛÛÛÛ» ÛÛ»   ÛÛ» ÛÛÛÛÛÛ»    ÛÛÛÛÛÛ»  ÛÛ»   ÛÛ» ÛÛ»   ÛÛ»                     ||",0
	r4 BYTE "||                      ÛÛÉÍÍÍÍÍ¼ ÛÛº   ÛÛº ÛÛ ÉÍÍÛÛ  ÛÛ ÉÍÍÛÛ  ÛÛº ÛÛÉÍ¼ ÛÛº   ÛÛº                     ||",0
	r5 BYTE "||                      ÛÛÛÛÛÛÛÛ  ÛÛº   ÛÛº ÛÛ º  ÛÛ  ÛÛ º  ÛÛ  ÛÛÛÛÛÉ¼   ÛÛº   ÛÛº                     ||",0
	r6 BYTE "||                      ÈÍÍÍÍÍÛÛ  ÛÛÈÍÍÍÛÛº ÛÛ ÈÍÍÛÛ  ÛÛ ÈÍÍÛÛ  ÛÛÉÍÛÛ»   ÛÛÈÍÍÍÛÛº                     ||",0
	r7 BYTE "||                      ÛÛÛÛÛÛÛÛ»  ÛÛÛÛÛÛÉ¼ ÛÛÛÛÛÛ¼    ÛÛÛÛÛÛ¼  ÛÛº   ÛÛ»  ÛÛÛÛÛÛÉ¼                     ||",0
	r8 BYTE "||                      ÈÍÍÍÍÍÍÍ¼  ÈÍÍÍÍÍ¼  ÈÍÍÍÍ¼     ÈÍÍÍÍ¼   ÈÍ¼   ÈÍ¼  ÈÍÍÍÍÍ¼                      ||",0
	r9 BYTE " ======================================================================================================= ",0

	r10 BYTE "PLAY",0
	r11 BYTE "BACK",0
	r12 BYTE "Edit",0
	sud_title DWORD OFFSET r1, OFFSET r2, OFFSET r3, OFFSET r4, OFFSET r5, OFFSET r6, OFFSET r7, OFFSET r8, OFFSET r9, OFFSET r10, OFFSET r11
	sud_game_options BYTE LENGTHOF r10, LENGTHOF r11

	sud_border BYTE " ----------- ----------- ----------- ",0
	sud_space BYTE "|           |           |           |",0

	max_width BYTE ?
	max_height BYTE ?
	option_flag DWORD 0
	YELLOW = 14
	WHITE = 15
	RED = 4
	BLUE =1  
	BLACK = 0
	GREEN = 2
	MAGENTA = 5
	LIGHT_MAGENTA = 13
	CYAN = 3
	ending_delay REAL8 100.0

	nameone BYTE "PLAYER 1 (MOVES FIRST)",0
	nametwo BYTE "PLAYER 2",0 
	namethree BYTE "Enter Option [ P : Play | B : Back | E : Edit ]: ",0
	enter_title DWORD OFFSET nameone, OFFSET nametwo, OFFSET namethree
	enter_title_length DWORD LENGTHOF nameone, LENGTHOF nametwo, LENGTHOF namethree
	max_size_name = 50
	player1 BYTE max_size_name+1 DUP(?)
	player2 BYTE max_size_name+1 DUP(?)


	turn_player BYTE "Player ",0
	turn BYTE " Turn ",0
	ttt_grid_top BYTE " ----------- ",0
	ttt_grid_bottom BYTE "|           |",0
	turn_counter DWORD 0
	turn_msg_one BYTE " Player ",0
	turn_msg_two BYTE ": ",0
	turn_msg_three BYTE "'s Turn",0
	symbols_assigned DWORD 0
	x_assigned DWORD -1
	o_assigned DWORD -1
	empty_spaces DWORD 9
	result DWORD -1
	result_al BYTE '_'
	
	x1 BYTE " ÛÛ   ÉÛÛ",0
	x2 BYTE "  ÛÛ ÉÛÛ",0
	x3 BYTE "   ÛÛÛÛ",0
	x4 BYTE "  ÛÛ ÈÛÛ",0
	x5 BYTE " ÛÛ»  ÈÛÛ»",0
	x6 BYTE " ÈÍ¼   ÈÍ¼",0
	x_sign DWORD OFFSET x1, OFFSET x2, OFFSET x3, OFFSET x4, OFFSET x5, OFFSET x6

	o1 BYTE "  ÛÛÛÛÛÛÍ»",0
	o2 BYTE "ÛÛ ÉÍÍÍÍÛÛ",0
	o3 BYTE "ÛÛ º    ÛÛ",0
	o4 BYTE "ÛÛ ÈÍÍÍÍÛÛ",0
	o5 BYTE "  ÛÛÛÛÛÛÍ¼",0
	o6 BYTE "  ÈÍÍÍÍ¼  ",0
	o_sign DWORD OFFSET o1, OFFSET o2, OFFSET o3, OFFSET o4, OFFSET o5, OFFSET o6

	w1 BYTE " ÛÛ        ÛÛ    ÛÛÛÛÛÛ    ÛÛÛÛ     ÛÛ",0
	w2 BYTE " ÛÛ        ÛÛ  ÛÛ      ÛÛ  ÛÛ ÛÛ    ÛÛ",0
	w3 BYTE " ÛÛ        ÛÛ  ÛÛ      ÛÛ  ÛÛ  ÛÛ   ÛÛ",0
	w4 BYTE " ÛÛ  ÛÛÛÛ  ÛÛ  ÛÛ      ÛÛ  ÛÛ   ÛÛ  ÛÛ",0
	w5 BYTE " ÛÛ ÛÛ  ÛÛ ÛÛ  ÛÛ      ÛÛ  ÛÛ    ÛÛ ÛÛ",0
	w6 BYTE " ÛÛÛÛ    ÛÛÛÛ    ÛÛÛÛÛÛ    ÛÛ     ÛÛÛÛ",0
	w_sign DWORD OFFSET w1, OFFSET w2, OFFSET w3 ,OFFSET w4, OFFSET w5, OFFSET w6

	d1 BYTE "ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ      ÛÛÛÛÛÛ    ÛÛ         ÛÛ",0
	d2 BYTE "ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ         ÛÛ",0
	d3 BYTE "ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ         ÛÛ",0
	d4 BYTE "ÛÛ      ÛÛ  ÛÛÛÛÛÛÛÛÛ   ÛÛÛÛÛÛÛÛÛÛ  ÛÛ   ÛÛÛÛ  ÛÛ",0
	d5 BYTE "ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ ÛÛ   ÛÛ ÛÛ ",0
	d6 BYTE "ÛÛÛÛÛÛÛÛ    ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛÛÛ     ÛÛÛÛ",0
	d_sign  DWORD OFFSET d1, OFFSET d2, OFFSET d3, OFFSET d4, OFFSET d5, OFFSET d6
	
	ttt_ending_nameone BYTE "Player 1: ",0
	ttt_ending_nametwo BYTE "Player 2: ",0
	e1 BYTE " WINS !!!",0
	e2 BYTE "NO ONE WINS !!!",0
	e3 BYTE "Back to Main Menu",0
	e4 BYTE "Play Again",0
	ttt_ending_options DWORD OFFSET e3, OFFSET e4
	ttt_ending_options_length BYTE LENGTHOF e3, LENGTHOF e4

	time_string BYTE "Time: ",0
	start_time DWORD ?
	diff_time DWORD ?
	seconds DWORD ?
	minutes DWORD ?
	


	v1 BYTE "  ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛ    ÛÛÛ     ÛÛ    ÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛ      ÛÛÛÛÛÛ    ÛÛÛÛÛÛÛÛÛÛ  ÛÛÛÛÛÛÛÛÛÛ",0
	v2 BYTE "ÛÛ          ÛÛ      ÛÛ  ÛÛ Û    ÛÛ  ÛÛ          ÛÛ      ÛÛ  ÛÛ      ÛÛ      ÛÛ      ÛÛ        ",0
	v3 BYTE "ÛÛ          ÛÛ      ÛÛ  ÛÛ  Û   ÛÛ  ÛÛ          ÛÛ      ÛÛ  ÛÛ      ÛÛ      ÛÛ      ÛÛ        ",0
	v4 BYTE "ÛÛ          ÛÛ      ÛÛ  ÛÛ   Û  ÛÛ  ÛÛ  ÛÛÛÛÛÛ  ÛÛÛÛÛÛÛÛÛ   ÛÛÛÛÛÛÛÛÛÛ      ÛÛ      ÛÛÛÛÛÛÛÛÛÛ",0
	v5 BYTE "ÛÛ          ÛÛ      ÛÛ  ÛÛ    Û ÛÛ  ÛÛ      ÛÛ  ÛÛ      ÛÛ  ÛÛ      ÛÛ      ÛÛ              ÛÛ",0
	v6 BYTE "  ÛÛÛÛÛÛÛÛ    ÛÛÛÛÛÛ    ÛÛ     ÛÛÛ    ÛÛÛÛÛÛÛ   ÛÛ      ÛÛ  ÛÛ      ÛÛ      ÛÛ      ÛÛÛÛÛÛÛÛÛÛ",0
	v_sign  DWORD OFFSET v1, OFFSET v2, OFFSET v3, OFFSET v4, OFFSET v5, OFFSET v6

	b1 BYTE "You Solved the grid in: ",0
	b2 BYTE " minutes and ",0
	b3 BYTE " seconds ",0
	

	
	original_board BYTE 81 DUP('_')
	solution_board BYTE 81 DUP('_')
	user_board BYTE 81 DUP('_')
	wrong_move_board BYTE 81 DUP('_')

	sudoku_file BYTE "Sudoku.txt",0
	solution_file BYTE "Solution.txt",0
	total_sudokus = 8
	line_sudoku BYTE 83 DUP(?)
	skip BYTE 81 DUP(?)
	file_handle DWORD ?
	bytes_read DWORD ?
	randomized_index DWORD ?
	
	z BYTE "DEBUGGED",0
	z1 BYTE "ENTERED",0
	z2 BYTE "END PROGRAM",0

	

.code



LOADING_SUDOKUS PROC
	Invoke CreateFileA, ADDR sudoku_file, GENERIC_READ, FILE_SHARE_READ,NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL
	mov file_handle, eax
	
	call Randomize
	mov eax, total_sudokus
	call RandomRange
	mov randomized_index, eax
	

	cmp randomized_index, 0
	jne check_through_loop
		invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
	jmp copied
	check_through_loop:
		mov esi, 1
		grid_loading:
		invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
		cmp esi, randomized_index
		je end_loading
		inc esi
		jmp grid_loading
		end_loading:
cmp bytes_read, 0
je copied
mov ecx, bytes_read
mov edi, offset line_sudoku
strip_crlf:
    cmp byte ptr [edi+ecx-1], 10 ; LF
    jne check_cr
    mov byte ptr [edi+ecx-1], 0
    dec ecx
    jmp done_strip
check_cr:
    cmp byte ptr [edi+ecx-2], 13 ; CR
    jne done_strip
    mov byte ptr [edi+ecx-2], 0
    dec ecx
done_strip:
invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
mov ecx, 81
mov ebx, 0
copy_into_original_board:
	movzx eax, line_sudoku[ebx]
	mov original_board[ebx], al
	cmp original_board[ebx],'0'
	jne not_underscore
		mov original_board[ebx], '_'
	not_underscore:
	inc ebx
loop copy_into_original_board
INVOKE CloseHandle, file_handle
copied:


		Invoke CreateFileA, ADDR solution_file, GENERIC_READ, FILE_SHARE_READ,NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL
	mov file_handle, eax
	cmp randomized_index, 0
	jne check_through_loop_2
		invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
	jmp copied
	check_through_loop_2:
		mov esi, 1
		grid_loading_2:
		invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
		cmp esi, randomized_index
		je end_loading_2
		inc esi
		jmp grid_loading_2
		end_loading_2:
cmp bytes_read, 0
je copied
mov ecx, bytes_read
mov edi, offset line_sudoku
strip_crlf_2:
    cmp byte ptr [edi+ecx-1], 10 ; LF
    jne check_cr
    mov byte ptr [edi+ecx-1], 0
    dec ecx
    jmp done_strip_2
check_cr_2:
    cmp byte ptr [edi+ecx-2], 13 ; CR
    jne done_strip_2
    mov byte ptr [edi+ecx-2], 0
    dec ecx
done_strip_2:
invoke ReadFile, file_handle, addr line_sudoku, 83, addr bytes_read, 0
mov ecx, 81
mov ebx, 0
copy_into_solution_board:
	mov al, line_sudoku[ebx]
	mov solution_board[ebx], al
	inc ebx
loop copy_into_solution_board
copied_2:
INVOKE CloseHandle, file_handle

	
	
return:
 ret
LOADING_SUDOKUS ENDP

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
		call ReadKey
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
		call ReadKey
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
			cmp ecx, 2
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

			cmp esi, 1
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
		call ReadKey
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
	fld ending_delay 
	call Delay
	call crlf
	ret
ENDING_SCREEN ENDP

; ---------------------------------------------- SUDOKU PLAY (W for moving up, S for down, D for right, A for left, R for reload (clrscr, then print again, E for back (currently it ends program, will fix later, FORCE SHUT ) PROC ---------------------------------------------------


SUDOKU_PLAY PROC 
	mov ecx, 81
	mov ebx, 0
	mov start_time, 0
	mov diff_time, 0
	clear_wrong_move:
		mov wrong_move_board[ebx], '_'
		inc ebx
	loop clear_wrong_move

	call GetTickCount     
	mov start_time, eax

	call LOADING_SUDOKUS
	mov ecx, 81
	mov ebx, 0
	enter_user_board:
		mov al, original_board[ebx]
		mov user_board[ebx], al
		inc ebx

	loop enter_user_board
	
	


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

	call GetTickCount     
	sub eax, start_time
	mov diff_time, eax
	
	mov eax, diff_time
	mov esi, 1000
	xor edx, edx
	div esi         
	mov seconds, eax
	mov eax, seconds
	mov esi, 60
	xor edx, edx
	div esi         
	mov minutes, eax
	mov seconds, edx
	

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
								cmp wrong_move_board[ebx], '_'
								jne set_wrong_color
								mov eax, WHITE
								jmp set_color
								set_wrong_color:
								mov eax, LIGHT_MAGENTA
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

	pop dx
	add dh, 2
	call GotoXY
	push dx
	mov dl, max_width
	mov eax, YELLOW
	call SetTextColor
	sub dl, LENGTHOF time_string
	shr dl, 1
	call GotoXY
	mov edx, OFFSET time_string
	call WriteString
	
	mov eax, minutes
	call WriteDec
	mov eax, ':'
	call WriteChar
	
    cmp seconds, 10
    jge two_digits 
		mov eax, '0'
		call WriteChar
	two_digits:
    mov eax, seconds
    call WriteDec

	mov eax, WHITE
	call SetTextColor

	call ReadKey
	cmp al, 'R'
	jne back
		call clrscr
		jmp end_movement
	back:
	cmp al, 'E'
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

	mov ecx, 81
	mov index, 0
	wrong:
    call CHECKING
    inc index
    loop wrong

	mov index, 0
	mov ecx, 81
	check_for_empty:
		mov eax, index
		movzx edx, solution_board[eax]
		cmp user_board[eax], dl
		jne continue_loop
		inc index
	loop check_for_empty
	mov option_flag, 81
	jmp end_printing
	continue_loop:

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

; ---------------------------------------------- TIC_TAC_TOE_PLAY PROC WASD for moving,R for reload     ---------------------------------------------------


TIC_TAC_TOE_PLAY PROC
	call clrscr
	mov ecx, 9
	mov esi,0
	L1:
		mov user_board[esi], '_'
		inc esi
	loop L1
	mov option_flag, 0
	mov turn_counter, 0
	mov empty_spaces, 9
	printed:
	call GetMaxXY
	mov max_height, al 
	
	mov max_width, dl  
		mov edx, 0
		mov eax, turn_counter
		mov esi,2
		div esi
		cmp edx, 0
		jne player2_center
			mov dl, max_width
	;		sub dl, LENGTHOF player1
			jmp center_it
		player2_center:
			mov dl, max_width
	;		sub dl, LENGTHOF player2
		center_it:	
	mov dh, 0
	mov dh, max_height
	sub dh, 9
	shr dh, 1
	sub dl, LENGTHOF turn_msg_one
	sub dl, LENGTHOF turn_msg_two
	sub dl, LENGTHOF turn_msg_three
	shr dl, 1
	call GotoXY
	mov dl, max_width
	sub dl, LENGTHOF ttt_grid_top
	shr dl, 1
	push dx 
	mov edx, 0
	mov eax, turn_counter
	mov esi, 2
	DIV esi 
	cmp edx, 0
	jne player_2_turn
		mov edx, OFFSET turn_msg_one
		call WriteString
		mov eax, 1
		call WriteDec
		mov edx, OFFSET turn_msg_two
		call WriteString
		mov edx, OFFSET player1
		call WriteString
		mov edx, OFFSET turn_msg_three
		call WriteString
		mov esi, ecx
		mov ecx, LENGTHOF turn_msg_one 
		add ecx, LENGTHOF turn_msg_two
		add ecx, LENGTHOF turn_msg_three
		add ecx, LENGTHOF player2
			add_space:
				mov al, ' '
				call WriteChar
			loop add_space
		mov ecx, esi
		jmp continue_program
	player_2_turn:
		mov edx, OFFSET turn_msg_one
		call WriteString
		mov eax, 2
		call WriteDec
		mov edx, OFFSET turn_msg_two
		call WriteString
		mov edx, OFFSET player2
		call WriteString
		mov edx, OFFSET turn_msg_three
		call WriteString
		
	continue_program:
	call crlf
	
	
	pop dx
	add dh,2
	push dx
	call GotoXY
	mov edx, OFFSET ttt_grid_top
	call WriteString
	call crlf
	pop dx
	inc dh
	push dx
	call GotoXY
	mov edx, OFFSET ttt_grid_bottom
	call WriteString
	call crlf
	mov ecx, 9
	mov ebx, 0
		
	
	L3:
		
		mov eax, ebx
		mov esi, 3
		mov edx, 0
		div esi 
		cmp edx, 0
		jne no_bar
			pop dx
			inc dh 
			push dx
			call GotoXY
			mov al, '|'
			call WriteChar
		no_bar:
		mov al, ' '
		call WriteChar
		mov al, ' '
		call WriteChar
		cmp ebx, option_flag
		jne no_set_cursor
			mov eax, BLACK + (WHITE*16)
			call SetTextColor
			jmp write_char
		no_set_cursor:
			cmp user_board[ebx], 'X'
			jne check_for_color_O
				mov eax, BLUE
				call SetTextColor
				jmp write_char
			check_for_color_O:
			cmp user_board[ebx], 'O'
			jne check_for_color_dash
				mov eax, GREEN
				call SetTextColor
				jmp write_char
			check_for_color_dash:
				mov eax, WHITE
				call SetTextColor
		write_char:
		mov al, user_board[ebx]
		call WriteChar
		mov eax, WHITE
		call SetTextColor
		mov eax, ebx
		inc eax
		mov edx, 0
		mov esi, 3
		div esi
		cmp edx, 0
		jne no_new_line
			mov al, ' '
			call WriteChar
			mov al, ' '
			call WriteChar
			mov al, '|'
			call WriteChar
			call crlf
		no_new_line:
		inc ebx
		dec ecx
		cmp ecx, 0
		jne continue_L3
			jmp end_L3
		continue_L3:
	jmp L3
	end_L3:
	pop dx
	inc dh 
	push dx
	call GotoXY
	mov edx, OFFSET ttt_grid_bottom
	call WriteString
	call crlf
	pop dx
	inc dh 
	call GotoXY
	mov edx, OFFSET ttt_grid_top
	call WriteString
	call crlf
	call ReadKey
	cmp al, 'R'
	jne check_for_right
		call clrscr
		jmp continue_printed
	check_for_right:
	cmp al, 'D'
	jne check_for_left
		mov esi, option_flag
		inc esi
		cmp esi, 8
		jg check_for_left
			mov option_flag, esi
	check_for_left:
	cmp al, 'A'
	jne check_for_up
		mov esi, option_flag
		dec esi
		cmp esi, 0
		jl check_for_up
			mov option_flag, esi
	check_for_up:
	cmp al, 'W'
	jne check_for_down
		mov esi, option_flag 
		sub esi, 3
		cmp esi, 0
		jl check_for_down
			mov option_flag, esi
	check_for_down:
	cmp al, 'S'
	jne assign_values
		mov esi, option_flag 
		add esi, 3
		cmp esi, 8
		jg continue_printed
			mov option_flag, esi
	assign_values:
		mov edx, option_flag 
		cmp user_board[edx], '_'
		jne continue_printed
		cmp symbols_assigned, 0
		jne check_for_other
			cmp al, 'X'
			jne check_for_o
				mov x_assigned, 0
				mov o_assigned, 1
				mov eax, option_flag
				mov user_board[eax], 'X'
				dec empty_spaces
				inc turn_counter
				call clrscr
				mov symbols_assigned, 1
				jmp continue_printed

			check_for_o:
			cmp al, 'O'
			jne continue_printed
				mov x_assigned, 1
				mov o_assigned, 0
				mov eax, option_flag
				mov user_board[eax], 'O'
				dec empty_spaces
				inc turn_counter
				call clrscr
				mov symbols_assigned, 1
				jmp continue_printed

		check_for_other:
			cmp al, 'X'
			jne check_for_o_2
			mov edx, 0
			mov eax, turn_counter
			mov esi, 2
			div esi
			cmp edx, 0
			jne odd
				cmp edx, x_assigned
				jne continue_printed
				mov eax, option_flag
				mov user_board[eax], 'X'
				dec empty_spaces
				inc turn_counter
				call clrscr
				jmp continue_printed
			odd:
			cmp x_assigned, 1
			jb continue_printed
				mov eax, option_flag
				mov user_board[eax], 'X'
				dec empty_spaces
				inc turn_counter
				call clrscr
				jmp continue_printed

		check_for_o_2:
			cmp al, 'O'
			jne continue_printed
			mov edx, 0
			mov eax, turn_counter
			mov esi, 2
			div esi
			cmp edx, 0
			jne odd_2
				cmp edx, o_assigned
				jne continue_printed
				mov eax, option_flag
				mov user_board[eax], 'O'
				dec empty_spaces
				inc turn_counter
				call clrscr
				jmp continue_printed
			odd_2:
			cmp o_assigned, 1
			jb continue_printed
				mov eax, option_flag
				mov user_board[eax], 'O'
				dec empty_spaces
				inc turn_counter
				call clrscr
				jmp continue_printed
				
	continue_printed:

	call TIC_TAC_TOE_CHECK
	cmp result, -1
	jne end_printed

	jmp printed
	end_printed:
	ret
TIC_TAC_TOE_PLAY ENDP

; ---------------------------------------------- TIC TAC TOE CHECKING PROC ---------------------------------------------------

TIC_TAC_TOE_CHECK PROC
	mov result, -1
	mov ecx, 3
	mov ebx, 0
	check_row:
		cmp user_board[ebx], '_'
		je go_on
			mov esi, ebx
			inc esi
			movzx eax, user_board[esi]
			cmp al, user_board[ebx]
			jne go_on
				mov edi, esi 
				inc edi 
				movzx eax, user_board[edi] 
				cmp al, user_board[esi] 
				jne go_on 
					mov al, user_board[ebx] 
					mov result_al, al
					mov result, 1
					jmp at_end ; -----------> WIN FOR ROW
		go_on:
		add ebx, 3
	loop check_row
	end_row_check:

	mov ecx, 3
	mov ebx, 0
	check_column:
		cmp user_board[ebx], '_'
		je go_on_2
			movzx eax, user_board[ebx]
			mov esi, ebx
			add esi, 3
			cmp al, user_board[esi]
			jne go_on_2
				mov edi, esi
				add edi, 3
				movzx eax, user_board[esi]
				cmp al, user_board[edi]
				jne go_on_2
					mov al, user_board[ebx] 
					mov result_al, al
					mov result, 1
					jmp at_end ; -----------> WIN FOR COLUMNS
		go_on_2:
		inc ebx
	loop check_column
	end_column_check:

	cmp user_board[0], '_'
	je check_secondary
	movzx eax, user_board[0]
	cmp al, user_board[4]
	jne check_secondary
	movzx eax, user_board[8]
	cmp al, user_board[4]
	jne check_secondary

	mov al, user_board[0] 
	mov result_al, al 
	mov result, 1
	jmp at_end ; -----------> WIN FOR PRIMARY DIAGONAL

	check_secondary:
	cmp user_board[2], '_'
	je check_draw
	movzx eax, user_board[2]
	cmp al, user_board[4]
	jne check_draw
	movzx eax, user_board[6]
	cmp al, user_board[4]
	jne check_draw

	mov al, user_board[2] 
	mov result_al, al
	mov result, 1
	jmp at_end ;  -----------> WIN FOR PRIMARY DIAGONAL

	check_draw:
	cmp empty_spaces, 0
	jne at_end
	mov result, 0     ;  -----------> DRAW
	at_end:
	ret
TIC_TAC_TOE_CHECK ENDP

; ---------------------------------------------- RESULT PROC OF TIC TAC TOE  ---------------------------------------------------


RESULT_TIC_TAC_TOE PROC
	mov option_flag, 0

	printed:
	call GetMaxXY
	mov max_width, dl
	mov max_height, al
	mov dh, 0
	push dx

	cmp result, 0
	je draw 
		cmp result_al, 'X'
		jne draw_o
			mov ecx, LENGTHOF x_sign
			mov ebx, 0
				mov eax, BLUE
				call SetTextColor
			print_x:

			pop dx
			inc dh
			push dx
			sub dl, LENGTHOF x1
			shr dl, 1
			call GotoXY

				mov edx, x_sign[ebx]
				call WriteString
				add ebx, 4
			loop print_x
			mov eax, WHITE
				call SetTextColor
			jmp after_sign

		draw_o:

			mov ecx, LENGTHOF o_sign
			mov ebx, 0
			mov eax, GREEN
				call SetTextColor
			print_o:
			pop dx
			inc dh
			push dx
			sub dl, LENGTHOF o1
			shr dl, 1
			call GotoXY

				mov edx, o_sign[ebx]
				call WriteString
				call crlf
				add ebx, 4
			loop print_o
			mov eax, WHITE
				call SetTextColor
		after_sign:
			call crlf
			pop dx 
			add dh, 2
			push dx 
			call GotoXY
			mov ecx, LENGTHOF w_sign
			mov ebx, 0
			print_win:
			pop dx
			inc dh
			push dx
			sub dl, LENGTHOF w1
			shr dl, 1
			call GotoXY
				mov edx, w_sign[ebx]
				call WriteString
				call crlf
				add ebx, 4
			loop print_win
			jmp statement
	draw:
		mov ecx, LENGTHOF d_sign
		mov ebx, 0
		print_draw:
			pop dx
			inc dh
			push dx
			sub dl, LENGTHOF d1
			shr dl, 1
			call GotoXY
			mov edx, d_sign[ebx]
			call WriteString
			call crlf
			add ebx,4 
		loop print_draw	
	statement:
		cmp result, 0
		je draw_statement 
			cmp result_al, 'X'
			jne it_is_o
				cmp x_assigned,0
				jne x_is_player_2
					pop dx
					add dh, 2
					push dx
					sub dl, LENGTHOF ttt_ending_nameone
					;sub dl, LENGTHOF player1
					sub dl, LENGTHOF e1
					shr dl, 1
					call GotoXY
					mov eax, CYAN
					call SetTextColor
					mov edx, OFFSET ttt_ending_nameone
					call WriteString
					mov edx, OFFSET player1
					call WriteString
					mov edx, OFFSET e1
					call WriteString
					jmp ending_options
				x_is_player_2:
					pop dx
					add dh, 2
					push dx
					mov eax, CYAN
					call SetTextColor
					sub dl, LENGTHOF ttt_ending_nametwo
					;sub dl, LENGTHOF player2
					sub dl, LENGTHOF e1
					shr dl, 1
					call GotoXY
					mov edx, OFFSET ttt_ending_nametwo
					call WriteString
					mov edx, OFFSET player2
					call WriteString
					mov edx, OFFSET e1
					call WriteString
					jmp ending_options
			it_is_o:
				cmp o_assigned,0
				jne o_is_player_2
					pop dx
					add dh, 2
					push dx
					sub dl, LENGTHOF ttt_ending_nameone
					;sub dl, LENGTHOF player1
					sub dl, LENGTHOF e1
					shr dl, 1
					call GotoXY
					mov eax, CYAN
					call SetTextColor
					mov edx, OFFSET ttt_ending_nameone
					call WriteString
					mov edx, OFFSET player1
					call WriteString
					mov edx, OFFSET e1
					call WriteString
					jmp ending_options
				o_is_player_2:
					pop dx
					add dh, 2
					push dx
					sub dl, LENGTHOF ttt_ending_nametwo
					;sub dl, LENGTHOF player2
					sub dl, LENGTHOF e1
					shr dl, 1
					call GotoXY
					mov eax, CYAN
					call SetTextColor
					mov edx, OFFSET ttt_ending_nametwo
					call WriteString
					mov edx, OFFSET player2
					call WriteString
					mov edx, OFFSET e1
					call WriteString
					jmp ending_options
		draw_statement:
			pop dx
		add dh, 2
			push dx
			sub dl, LENGTHOF e2
			shr dl, 1
			call GotoXY
			mov eax, CYAN
			call SetTextColor
			mov edx, OFFSET e2
			call WriteString
	ending_options:
	mov eax, WHITE
	call SetTextColor
	call crlf
		mov ecx, 0 
		mov esi, 0
		mov ebx, 0
		L2:
			mov eax, WHITE
			call SetTextColor
			cmp ecx, 2
			je last 
			pop dx 
			call crlf
			mov al, max_width
			sub al, ttt_ending_options_length[esi]
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
			sub al, ttt_ending_options_length[esi]
			shr al, 1
			mov dl, al 
			sub dl, LENGTHOF t13
			inc dl
			call Gotoxy
			mov edx, OFFSET t13
			call WriteString

			go:
			mov edx, ttt_ending_options[ebx]
			call WriteString
			call crlf
			add ebx, 4
			inc ecx
			inc esi 
		jmp L2
		last:
		pop dx
		call ReadKey
		cmp al, 'R'
	jne go_a
		call clrscr
	go_a:
		cmp al, 'A'
		jne go_s
		jmp end_printing
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,1
		jge to_end
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne to_end
		cmp option_flag, 0
		jle to_end
		dec option_flag
		call clrscr
	to_end:
	jmp printed
	end_printing:
	
	
	ret
RESULT_TIC_TAC_TOE ENDP

; ---------------------------------------------- SUDOKU CHECKING PROC ---------------------------------------------------



CHECKING PROC

mov esi, index
movzx eax, user_board[esi]
cmp eax, '_'
je it_is_empty
	cmp al, solution_board[esi]
	je it_is_empty
	mov wrong_move_board[esi], al
	jmp return 
	it_is_empty:
	mov wrong_move_board[esi], '_'
return:
ret
CHECKING ENDP

; ---------------------------------------------- RESULT PROC OF SUDOKU  ---------------------------------------------------


RESULT_SUDOKU PROC
	
	call clrscr
	mov option_flag, 0

	printed:
	call GetMaxXY
	mov max_width, dl
	mov max_height, al
	mov dh, 0
	push dx
			mov ecx, LENGTHOF v_sign
			mov ebx, 0
			print_v:
			pop dx
			inc dh
			push dx
			sub dl, LENGTHOF v1
			shr dl, 1
			call GotoXY
			mov edx, v_sign[ebx]
			call WriteString
			add ebx, 4
			loop print_v
	draw_statement:
			pop dx
			add dh, 2
			push dx
			sub dl, LENGTHOF b1
			sub dl, LENGTHOF b2
			sub dl, LENGTHOF b3
			shr dl, 1
			call GotoXY
			mov eax, CYAN
			call SetTextColor
			mov edx, OFFSET b1
			call WriteString
			mov eax, minutes
			call WriteDec
			mov edx, OFFSET b2
			call WriteString
			mov eax, seconds
			call WriteDec
			mov edx, OFFSET b3
			call WriteString
	
		ending_options:
	mov eax, WHITE
	call SetTextColor
	call crlf
		mov ecx, 0 
		mov esi, 0
		mov ebx, 0
		L2:
			mov eax, WHITE
			call SetTextColor
			cmp ecx, 2
			je last 
			pop dx 
			call crlf
			mov al, max_width
			sub al, ttt_ending_options_length[esi]
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
			sub al, ttt_ending_options_length[esi]
			shr al, 1
			mov dl, al 
			sub dl, LENGTHOF t13
			inc dl
			call Gotoxy
			mov edx, OFFSET t13
			call WriteString

			go:
			mov edx, ttt_ending_options[ebx]
			call WriteString
			call crlf
			add ebx, 4
			inc ecx
			inc esi 
		jmp L2
		last:
		pop dx
		call ReadKey
		cmp al, 'R'
	jne go_a
		call clrscr
	go_a:
		cmp al, 'A'
		jne go_s
		jmp end_printing
	go_s:
		cmp al, 'S'
		jne go_w
		cmp option_flag,1
		jge to_end
		inc option_flag
		call clrscr
	go_w:
		cmp al, 'W'
		jne to_end
		cmp option_flag, 0
		jle to_end
		dec option_flag
		call clrscr
	to_end:
	jmp printed
	end_printing:
ret
RESULT_SUDOKU ENDP

; ---------------------------------------------- MAIN PROC ---------------------------------------------------

main PROC 



game_loop:
	main_menu:
	mov option_flag, 0
	call PRINTING_MENU

	; -----> WHEN USER CHOOSE TIC TAC TOE (OPTION 1 OF MAIN MENU)

	tic_tac_toe_label:
	cmp option_flag, 0
	jne check_second
		call TTT
		cmp option_flag, 0
		jne game_loop
		entry_names_part:
		call ENTRY_NAMES
		cmp option_flag, 1
		jne tic_tac_toe_label
		call TIC_TAC_TOE_PLAY
		call RESULT_TIC_TAC_TOE
		cmp option_flag, 0
		je main_menu
		call entry_names_part


	; -----> WHEN USER CHOOSE SUDOKU (OPTION 2 OF MAIN MENU)

	check_second:
	sudoku_part:
	cmp option_flag, 1
		jne check_third
		mov option_flag, 0
		call SUDOKU 
		
		cmp option_flag, 0
			jne check_second_sudoku
 		call clrscr
			call SUDOKU_PLAY
			cmp option_flag, 81
			jne	main_menu
			call RESULT_SUDOKU
			cmp option_flag, 0
			je main_menu
			jmp sudoku_part
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
