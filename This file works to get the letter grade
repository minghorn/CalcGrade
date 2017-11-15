INCLUDE Irvine32.inc
.data
prompt BYTE "Write a test score (000 to exit): ",0
score BYTE "test Score: ",0
grade BYTE " letter Grade: ",0
wrong BYTE "Test can't have a grade higher than 100 "
totalS BYTE "Total Score: ",0
.code 
main PROC
mov ecx,0
 
L1:
mov edx,OFFSET prompt
cmp eax, 10000
je L2
call WriteString
call ReadDec
call CalcGrade
loop L1
L2:
exit
main ENDP
CalcGrade PROC
cmp eax,000
je Z
cmp eax,100
ja G
cmp eax,90
jae A
cmp eax,80
jae B
cmp eax,70
jae J
cmp eax,60
jae D
jmp F
 
A: add ecx,eax
mov edx,OFFSET score
call WriteString
call WriteInt
mov al,'A'
mov edx,OFFSET grade
call WriteString
call WriteChar
jmp next
B: add ecx,eax  
mov edx,OFFSET score
call WriteString
call WriteInt
mov al,'B'
mov edx,OFFSET grade
call WriteString
call WriteChar
jmp next
J: add ecx,eax
mov edx,OFFSET score
call WriteString
call WriteInt
mov al,'C'
mov edx,OFFSET grade
call WriteString
call WriteChar
jmp next
D: add ecx,eax
mov edx,OFFSET score
call WriteString
call WriteInt
mov al,'D'
mov edx,OFFSET grade
call WriteString
call WriteChar
jmp next
F: add ecx,eax
mov edx,OFFSET score
call WriteString
call WriteInt
mov al,'F'
mov edx,OFFSET grade
call WriteString
call WriteChar
jmp next
G: mov edx,OFFSET wrong
call WriteString
jmp next
 Z: mov eax,ecx
 mov edx,OFFSET totalS
 call WriteString
 call writeInt
 mov eax,10000
 jmp next
next: call crlf
ret
CalcGrade ENDP
END main
