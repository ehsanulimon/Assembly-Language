
.MODEL SMALL 
.STACK 100H 
.DATA    
msg DB 'Now we are learning assembly programming language$' 
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS,AX
    LEA DX,MSG
    MOV AH,09H
    INT 21H
    exit:
    mov ah,4ch 
    int 21h
    main endp
 End MAIN

