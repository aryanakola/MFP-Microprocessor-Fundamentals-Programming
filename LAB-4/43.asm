data segment
 debu db "hey$"
data ends

code segment 
assume cs:code,ds:data
        mov ax,data
        mov ds,ax
        mov ah,1    ; ah<-1 for echo and ah<-7 for not echo
        int 21h     ; with 1, when enter 'a' then output is 'aheya'
                    ; with 7, when enter 'a' then output is 'heya'
        ; displaying the string
        
        mov cl,al
        mov ah,9        
        mov bx,seg debu 
        mov ds,bx
        mov dx,offset debu
        int 21h
        
        ;display of the character
        
        mov ah,2
        mov dl,cl
        int 21h
        mov ax,4c00h
        int 21h
code ends
end