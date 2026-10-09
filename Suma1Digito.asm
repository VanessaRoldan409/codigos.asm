.model small
.code

    mov ah, 01h
    int 21h
    sub al, 48          
    mov bl, al          

    mov dl, 13         
    mov ah, 02h
    int 21h
    mov dl, 10       
    mov ah, 02h
    int 21h

    mov ah, 01h
    int 21h
    sub al, 48          
    mov bh, al          

    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h

    mov al, bl
    add al, bh          

    add al, 48         
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

end