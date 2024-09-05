.model small
.stack 100h
.data
    msg db 'Hello, World!$', '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; print the message
    mov ah, 09h
    lea dx, msg
    int 21h

    ; exit
    mov ax, 4Ch
    int 21h
main endp
end main
