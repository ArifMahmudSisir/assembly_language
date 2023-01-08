; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
ARR DB "HELLO BANGLADESH$"
MSG DB "THE CHARCTER IS PRESENT$" 
MSG2 DB "THE CHARCTER IS NOT PRESENT$"

.CODE
          
MOV SI, OFFSET ARR           
MOV AL,'M'; the character i want to find

FIND:
CMP AL,'$'
JE EXIT
CMP AL,[SI]
JE DONE
INC SI
 
JMP FIND

DONE:
LEA DX,MSG
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H

EXIT:
LEA DX,MSG2
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H


ret
