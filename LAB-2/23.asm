data segment
n1 dw 1234h
n2 dw 0f635h
data ends
code segment 
assume cs:code, ds:data
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
mov cx,0000h
add ax,bx
jnc store
inc cx
store: mov ds:[0004h],ax
		mov ds:[0006h],cx
code ends
end