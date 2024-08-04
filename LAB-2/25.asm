data segment
n1 dd 0eeeeeeeeh
n2 dd 11111112h
data ends
code segment
assume cs:code, ds:data
mov ax,data
mov ds, ax
mov ax,word ptr n1
mov bx,word ptr n2
mov cx,word ptr n1+2
add bx,ax
mov word ptr ds:[3000h],bx 
jnc continue
inc cx
continue : mov bx, word ptr n2+2
add bx,cx
mov word ptr ds:[3010h],bx
mov ax, 4c00h
int 21h
code ends
end
