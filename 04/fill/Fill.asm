(BEGIN)
	@keyboard
	M=D

	@24576
	D=A
(CHECK_KEYBOARD)
	@current
	M=D

	@keyboard
	A=M
	D=M
	
	@24575
	D=A
	
	@DRAW
	D;JNE
	
	@fillvalue
	M=0
	
	@fillvalue
	M=-1
(DRAW)
	@current
	A=M
	M=D

	@fillvalue
	D=M

	@current
	D=M

	@16384
	D=D-A

	@CHECK_KEYBOARD
	D;JLE

	@current
	M=M-1

	@DRAW
	0;JMP