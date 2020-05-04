    org 100h
    ;Limpiar variables 
section .text
            mov ax,0h
            mov bx,0h

            mov bp,array
            mov di,0h 
salto2      mov bl,[bp+di]
            cmp bl, 32h
            ja saltofinal
            mov [200h+di],bl
            add ax,bx
            inc di
            cmp di,000Ah
            jb salto2
            jae saltof

saltof      mov bx,000Ah
            div bx

            mov [210h],ax

saltofinal int 20h



section .data
array db 1,2,3,4,5,6,7,8,9,10


