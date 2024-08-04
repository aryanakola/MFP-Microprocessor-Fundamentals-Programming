code segment
assume cs:code
mov ax,1234h
mov bx,3425h
add ax,bx
stc
mov ax,[bx]
mov bx,[1234h]
code ends
end