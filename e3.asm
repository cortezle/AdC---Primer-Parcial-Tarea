    org 100h

section .text
    mov ax, 0h
    mov bx, 0h
    mov cx, 0h
    mov di,00h
    mov cx,5h
    
;valor voltaje & resistencia usuario
    mov ax, [200h]
    mov bx,[210h]
    cmp bx,0h
    jz  salto1
    jnz salto2
salto2  div bx
        mov [220h],ax
        cmp bx,0h
        jnz salto3

;escribiendo el error en la memoria
salto1  mov bl,[error+di]
        mov [di+200h],bl
        inc di
        loop salto1

salto3 int 20h

section .data

error db "error"
len equ $-error