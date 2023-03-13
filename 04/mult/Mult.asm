(BEGIN)
	@R2
	M=0
(LOOP)
	@R1
	D=M

	@END
	D;JLE
	
	@R0
	D=M
	
	@R1
	M=M-1

	@R2
	M=M+D
	
	@LOOP
	0;JMP
(END)
	@END
	0;JMP