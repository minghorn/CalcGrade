include Irvine32.inc
.data
str1 BYTE ": The letter grade is ",0
grade BYTE ?

.code
main PROC
; your codes go here.
again:
 ; your codes go here.
 ; Print the grade (optional)
 ; your codes go here.
 exit
main ENDP

CalcGrade proc
; Calculates a letter grade
; Receives: EAX = numeric grade
; Returns: AL = letter grade

JMP Grade_A
Grade_A:
	CMP EAX, 90
	mov AL, 'A'
	JGE finished
	JMP Grade_B
Grade_B:
	CMP EAX, 80
	mov AL, 'A'
	JGE finished
	JMP Grade_C
Grade_C:
	CMP EAX, 70
	mov AL, 'A'
	JGE finished
	JMP Grade_D
Grade_D:
	CMP EAX, 60
	mov AL, 'D'
	JGE finished
	JMP Grade_F
Grade_F:
	mov AL, 'F'
	JGE finished
finished:
 ret
CalcGrade endp
END main
