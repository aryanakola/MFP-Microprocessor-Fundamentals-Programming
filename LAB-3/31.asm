data segment
n1 db 0e0h
n2 db 02h
data ends
code segment 
assume cs:code, ds:data
mov ax, data
mov ds,ax
mov al, n1
mov bl, n2
add al,bl 
lahf
test ah,10h
jnz store
mov byte ptr ds:[3000h], 01h

mov ax,4c00h
int 21h

store: mov byte ptr ds:[3000h], 0ffh

mov ax,4c00h
int 21h

code ends
end
