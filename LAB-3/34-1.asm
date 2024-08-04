data segment
    n1 db 100
    n2 db 2
data ends

code segment 
assume cs:code,ds:data
    mov ax,code
    mov ax,data
    mov ds,ax
    mov al,n1
    mul n2
    
    mov ax,4c00h
    int 21h
code ends
end