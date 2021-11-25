.MODEL SMAIL 
.STACK 100H
.DATA 
MSG1 DB 'ENTER TWO NUMBER :$'
MSG2 DB 'PRINT multiply  :$'     
A DB ?  
B DB ?
c DB ?
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
           ;input indicator MESSAGE
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
        ;INPUT FIRST NUMBER

    MOV AH,1
    INT 21H 
    SUB AL,30H
    MOV A,AL  
     
     ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
     ;INPUT SECOND NUMBER      
     
    MOV AH,1
    INT 21H  
     SUB AL,30H
    MOV B,AL  
    
    ;MAIN LOGIC
  MUL A;
  MOV C,AL
  MOV AH,0
  AAM;
  ADD AH,30H
  ADD AL,30H
  MOV BX,AX

     ;NEW LINE
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    ;OUTPUT indicator MESSAGE
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    