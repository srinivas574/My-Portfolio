// =============================================
// 8085 ALP: Sum of N one-byte numbers
// N stored at memory location F100H
// Numbers stored starting from F101H
// Result stored at 8000H (high byte) and 8001H (low byte)
// =============================================
	   LDA F100	// LOAD N
	   MOV C,A	// COUNTER
	   LXI H,F101	// HL ->FIRST NUMBER
	   MVI A,00	// LOW BYTE SUM = 0
	   MVI D,00	// HIGH BYTE SUM = 0

SUM_LOOP:	   ADD M	// ADD NUMBER
	   INX H	// MOVE TO NEXT
	   JNC NO_CARRY
	   INR D	// ADD CARRY TO HIGH BYTE

NO_CARRY:	   DCR C
	   JNZ SUM_LOOP
	   STA 8001	// STORE LOW BYTE
	   MOV A,D
	   STA 8000	// STORE HIGH BYTE
	   HLT
