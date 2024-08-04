data segment
n1 dd 12341234h
n2 dd 0f6350001h
data ends
code segment 
assume cs:code, ds:data
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n1+2
mov cx,n2
mov dx,n2+2
add ax,bx
jnc store
inc cx
store: mov ds:[0004h],ax
		mov ds:[0006h],cx
code ends
end
// still incomplete