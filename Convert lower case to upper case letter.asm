.MODEL SMALL
.STACK 100H
.DATA
A DB 'ENTER LOWERCASE LETTER $' 
B DB 'ENTER UPPERCASE LETTER $'
.CODE
MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
; lower case  to  upper case  
    LEA DX,A
    MOV AH,09H
    INT 21H  
    MOV AH,01H
    INT 21H
    MOV BL,AL
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H  
    MOV AH,02H
    SUB BL,20H
    MOV DL,BL
    INT 21H    
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H 
    ;upper case to lower case   
    LEA DX,B 
    MOV AH,09H
    INT 21H  
    MOV AH,01H
    INT 21H
    MOV BL,AL
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H  
    MOV AH,02H
    ADD BL,20H
    MOV DL,BL
    INT 21H   
       exit:
       mov ah,4ch 
       int 21h
       main endp
 End MAIN
    


