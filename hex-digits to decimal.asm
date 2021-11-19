.MODEL SMALL
.STACK 100H
.DATA
HD DB ?

.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    MOV DL,HD
    INT 21H 
    MOV BL,AL
     
    MOV AH,2
    MOV DL,0AH
    INT 21H
   ; MOV DL,0DH  
    ;INT 21H 
    
    MOV AH,2
    MOV DL,BL
    INT 21H
  


