.MODEL SMALL
.STACK 100H
.DATA
v DB '*$'
vn db ?
.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX  
       mov ah,1
       int 21h
         
     sub al,48
     mov cx,0
     mov cl,al
      
     mov bx,0
     mov bl,al
     
     mov vn,al
     
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H
      
      
     level1:  
     lea dx,v 
     mov ah,9 
     int 21h  
     dec bl 
     cmp bl,0
     je level2
     jmp level1  
      
     level2:
    MOV AH,02H
    MOV DL,0AH
    INT 21H
    MOV DL,0DH  
    INT 21H 
    
    mov bl,vn
    loop level1
   
     
   






