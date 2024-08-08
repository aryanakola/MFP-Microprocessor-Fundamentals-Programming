data segment
    check db 'Y'
    message db "Hello World$"
    not_correct db "Y is not entered$"
data ends

code segment
assume cs:code, ds:data
    
        mov ax,data
        mov ds,ax
        mov ah,1
        int 21h
        cmp al,check

        jz correct
        
        mov dx, offset not_correct
        mov ah,09
        int 21h
        jmp bye

correct: mov dx,offset message
mov ah,09h
         int 21h
         jmp bye


bye: mov ax,4c00h
        int 21h
code ends
end
