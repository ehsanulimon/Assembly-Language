.MODEL SMAIL 
.STACK 100H
.DATA 
MSG1 DB 'ENTER A HEXA DECIMAL NUMBER :$'
MSG2 DB "PRINT DECIMAL NUMBER: $"     
A DB ?
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    SUB A,11H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,31H  ; 31H = 1 
    INT 21H
    
    MOV AH,2
    MOV DL,A
    INT 21H
    
    