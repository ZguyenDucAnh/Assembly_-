include \masm32\include\masm32rt.inc

.data
    num1 dd 0
    num2 dd 0
    sum dd 0
    
.code
tong_ proc ;n1: DWORD, n2: DWORD
    mov eax, num1
    add eax, num2
    mov sum, eax
    print chr$(13,10)
    print chr$("Tong 2 so la: ")
    print str$(sum)


    ret
tong_ endp

start:
    
    ;......
    mov num1, sval(input("Nhap num 1: "))
    print chr$(13,10)
    mov num2, sval(input("Nhap num 2: "))
    print chr$(13,10)
    mov eax, num1 ;gan eax = num1
    add eax, num2
    call tong_ 

    exit
end start