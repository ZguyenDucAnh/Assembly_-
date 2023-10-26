include \masm32\include\masm32rt.inc
.data
num_in dd 0
.code
chan_le proc n1:DWORD
LOCAL du:DWORD
mov eax,n1
mov edx,0
mov ebx,2
div ebx
mov du,edx
mov eax,du
cmp eax,0
je la_so_chan
jmp la_so_le
la_so_chan:
    print chr$("la so chan")
    ret; jmp thoat
la_so_le:
    print chr$("la so le")    
ret ;thoat:
chan_le endp
start:
mov num_in,sval(input("nhap so: "))
invoke chan_le,num_in


exit
end start
