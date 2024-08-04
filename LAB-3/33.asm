data segment 
n1 dw 6666h
n2 dw 1111h
data ends
code segment
assume cs:code, ds:data
mov ax, data
mov ds,ax
mov ax,n1
mov bx,n2 
neg bx
add ax,bx
mov ds:[3000h],ax
mov ax,4c00h
int 21h 
code ends
end
