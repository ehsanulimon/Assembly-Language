
 .MODEL SMALL
.STACK 100H
.DATA
msg DB 'Enter three initials: $' 
 a db ?
  b db ?
   c db ?
.CODE
MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
; msg print  
    LEA AX,msg
    MOV AH,09H
    INT 21H  
    
    MOV AH,1 
    INT 21H
    mov a,al
              
    MOV AH,1 
    INT 21H
    mov b,al
    
    MOV AH,1 
    INT 21H
    mov c,al
    
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H  
    
    MOV AH,2 
    mov dl,a
    INT 21H 
    
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H  
       
    MOV AH,2 
    mov dl,b
    INT 21H 
   
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H  
    
    MOV AH,2 
    mov dl,c
    INT 21H 
   