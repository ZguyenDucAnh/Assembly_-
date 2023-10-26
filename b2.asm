include \masm32\include\masm32rt.inc
.data
    num1 dd 0
    num2 dd 0
    sum dd 0
    mulp dd 0
    thuong_so dd 0
    du dd 0
    
.code
start:

    mov num1, sval(input("Nhap num1: "))
    ;print chr$(13,10)
    mov num2, sval(input("Nhap num2: "))
    ;print chr$(13,10); Lenh xuong dong
    mov eax, num1
    add eax, num2
    mov sum, eax
    print chr$("Tong hai so la: ")
    print str$(sum)
    print chr$(13,10)
    mov eax, num1
    mul num2
    mov mulp, eax
    print chr$("Tich 2 so la: ")
    print str$(mulp)
    ;thuong so
    mov eax, num1
    mov edx, 0
    div num2
    mov thuong_so, eax
    mov du, edx
    print chr$(13,10)
    print chr$("thuong so: ")
    
    print str$(thuong_so)
    print chr$(", du: ")
    print str$(du)
    exit
end start