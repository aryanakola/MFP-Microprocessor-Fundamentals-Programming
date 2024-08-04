data segment
n1 DB 12h
n2 db ?
data ends
code segment 
assume Cs:code, ds : data
mov ax,data
mov ds,ax
mov al,n1
mov n2,al
int 03
code ends
end