	org	100h

	mov ax,0h
	mov bx,0h


	;voltaje
	mov ax, 78h

	;resistencia
	mov bx, 003Ch

	;Moviendo valores a las celdas.
	mov [200h],ax
	mov [210h],bx
	;Ley de Ohm i=V/R

	div bx


	mov [220h],ax

	int 20h



