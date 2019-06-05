segment .data
msg db "sys_write test",0
len equ $-msg

global main
segment .text
main:
	push ebp
	mov ebp,esp

	mov ebx,1 
	mov ecx,msg
	mov edx,len
	mov eax,4
	int 0x80

	mov esp,ebp
	pop ebp
	ret
