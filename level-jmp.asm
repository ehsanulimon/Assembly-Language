.MODEL SMALL
.STACK 100H
.DATA
v DB '*$'
v2 DB '#$'
.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX  
      
    
     first:
     lea dx,v 
     mov ah,9
     int 21h  
     jmp secound 
     
     secound:
     lea dx,v2 
     mov ah,9  

     int 21h  
     jmp first 
     
   






