.model small
.code

    mov dl, 'H'
    mov ah, 02h
    int 21h
    mov dl, 13      
    int 21h
    mov dl, 10      
    int 21h

    mov dl, 'o'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'l'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'a'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'm'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'u'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'n'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'd'
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, 'o'
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

end