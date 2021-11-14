  
.MODEL SMALL 
.STACK 100H 
.DATA    
msg DB 'now we are learning assembly programming language$' 
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS,AX
    LEA DX,MSG
    MOV AH,09H
    INT 21H
    END MAIN

