.MODEL SMAIL 
.STACK 100H
.DATA 
MSG1 DB 'ENTER TWO NUMBER :$'
MSG2 DB 'PRINT RESULT :$'     
A DB ?  
B DB ?
c DB ?
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    LEA DX,MSG1 ;input indicator MESSAGE
    MOV AH,9
    INT 21H 
    MOV AH,1;INPUT FIRST NUMBER
    INT 21H 
    SUB AL,30H
    MOV A,AL  
    MOV AH,2  ;NEW LINE
    MOV DL,0DH
    INT 21H 
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    MOV AH,1 ;INPUT SECOND NUMBER   
    INT 21H  
    SUB AL,30H
    MOV B,AL  
    ADD AL,A; Addition LOGIC
    MOV C,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    MOV AH,2 ;NEW LINE
    MOV DL,0DH
    INT 21H 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    LEA DX,MSG2 ;OUTPUT indicator MESSAGE
    MOV AH,9
    INT 21H ;Display first digit
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV AH,2 ;Display SECOND digit
    MOV DL,BL
    INT 21H 
       exit:
       mov ah,4ch 
       int 21h
       main endp
 End MAIN

    
    