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
sub ax,bx
mov word ptr ds:[3000h],ax 
jnc continue
dec cx
continue : mov bx, word ptr n2+2
sub cx,bx
mov word ptr ds:[3010h],cx
mov ax, 4c00h
int 21h
code ends
end
