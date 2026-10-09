.model small
.code

    mov dl, 39h

ciclo:

    mov ah, 02h
    int 21h

    mov bh, dl

    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h

    mov dl, bh
    dec dl          

    cmp dl, 30h
    jae ciclo      

    mov ah, 4Ch
    int 21h

end