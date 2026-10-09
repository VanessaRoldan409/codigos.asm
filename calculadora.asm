.model small
.code

    mov dl, '1'
    mov ah, 02h
    int 21h
    mov dl, ')'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'S'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 'm'
    int 21h
    mov dl, 'a'
    int 21h

    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, '2'
    int 21h
    mov dl, ')'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'R'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 's'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'a'
    int 21h

    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    mov dl, '3'
    int 21h
    mov dl, ')'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'M'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 'l'
    int 21h
    mov dl, 't'
    int 21h

    ; Salto de línea
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; "operacion : "
    mov dl, 'o'
    int 21h
    mov dl, 'p'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'r'
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'o'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ':'
    int 21h
    mov dl, ' '
    int 21h

    mov ah, 01h
    int 21h
    mov bl, al      

    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h

    cmp bl, '1'
    jb  error
    cmp bl, '3'
    ja  error

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

    mov ah, 01h
    int 21h
    sub al, 48
    mov cl, al          

    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h

    cmp bl, '1'
    je  hacer_suma
    cmp bl, '2'
    je  hacer_resta
    cmp bl, '3'
    je  hacer_mult

hacer_suma:
    mov al, bh
    add al, cl
    jmp validar

hacer_resta:
    cmp bh, cl         
    jb  error
    mov al, bh
    sub al, cl
    jmp validar

hacer_mult:
    mov al, bh
    mul cl             
    jmp validar

validar:
    cmp al, 9          
    ja  error

    add al, 48          
    mov dl, al
    mov ah, 02h
    int 21h
    jmp final

error:
    mov dl, 45h
    mov ah, 02h
    int 21h

final:
    mov ah, 4Ch
    int 21h

end