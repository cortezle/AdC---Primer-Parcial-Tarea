	;00029117
	org	100h

	; precio por galon $3.00 yo pongo $10 ... 10/3.00 = 3.00 
	mov ax, [200h]
	mov bx,[210h]


	div bx

	mov [220h],ax

	int 20h

'