data segment
    n1 dw 0a002h
    n2 dw 0001h
data ends

code segment 
assume cs:code, ds:data
    mov ax,data
    mov ds,ax
    mov ax,n1
    cwd
    idiv n2
    mov ax,4c00h
    int 21h

code ends
end