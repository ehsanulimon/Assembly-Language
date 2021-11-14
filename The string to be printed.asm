


.MODEL SMALL 
.STACK 100H 
.DATA 
  
;The string to be printed 
STRING DB 'This is 1st sample string$' 
STRIN DB 0AH,0DH,'This is 2nd sample string$'
  
.CODE 
MAIN PROC FAR 
 MOV AX,@DATA 
 MOV DS,AX 
  
 ; load address of the string 
 LEA DX,STRING
 LEA DX,STRIN 
  
 ;output the string
 ;loaded in dx 
 MOV AH,09H
 INT 21H    
 MOV AH,09H
 INT 21H 
  
 ;interrupt to exit
 MOV AH,4CH
 INT 21H 
  
MAIN ENDP
