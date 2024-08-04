data segment

    array db 05h,02h,01h,03h,04h
    array_size db 05h
    minimum db ?

data ends

code segment
assume cs:code, ds:data

        mov ax,data
        mov ds,ax
        mov bx,offset array
        mov dl,array_size
        mov cl,0ffh
conexe: cmp cl,byte ptr[bx]
        jnc store
back:   inc bx
        dec dl
        jnz conexe
        jz ending


store: mov cl,byte ptr[bx]
        jmp back

ending: mov bx, offset minimum
        mov byte ptr[bx],cl
        mov ax,4c00h
        int 21h
code ends
end