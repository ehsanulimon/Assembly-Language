  .model small
  .stack 100h
  .data 
  msg db 'hello one  $'
    msg1 db 'hello two $'
  .code 
  MAIN proc
       mov ax,@data
       mov ds,ax 
       
       lea dx,msg
       mov ah,9
       int 21h
        
       lea dx,msg1
       mov ah,9
       int 21h
       
       exit:
       mov ah,4ch 
       int 21h
       main endp
 End MAIN



