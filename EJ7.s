
;	201910396 	Cristian Olarte

A1		EQU		0x20000000 
A2		EQU		0x20000004 
A3		EQU		0x20000008 
A4		EQU		0x2000000C 		
A5		EQU		0x20000010	

		AREA	|.text|, CODE, READONLY, ALIGN = 2
		ENTRY
		EXPORT	__main	

__main		
		LDR		R1, =A1
		LDR		R2, =A2
		LDR 	R3, =A3
		LDR 	R4, =A4
		LDR 	R5, =A5
		
LOOP	MOV		R6, #3100
		MOV		R7, #3250
		MOV		R8, #2290
		MOV		R9, #4540

		STR		R6,  [R1]
		STR		R7,  [R2]
		STR		R8,  [R3]
		STR		R9,  [R4]

		MUL		R10, R6, R7
		ADD		R11, R8, R9
		UDIV	R12, R10, R11
		STR		R12,  [R5]
		
        B		LOOP
		
		ALIGN
		END	