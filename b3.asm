include \masm32\include\masm32rt.inc
.data
    num1 dd 0
    num2 dd 0
    sum dd 0
    mulp dd 0
.code
;;procedure++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;<ten_chuong trinh con> proc
;
;   ret
;<ten_chuong trinh con> endp
tinh_tong proc
    mov eax, num1
    add eax, num2
    mov sum, eax
    print chr$("Tong hai so: ")
    print str$(sum)
    ret
tinh_tong endp

;+++++++++++++++++++++++++++++++++++++++++++++++
;;Tich 2 so
tich proc n1: DWORD, n2: DWORD
    mov eax, n1
    mul n2
    mov mulp, eax
    print chr$("Tich 2 so: ")
    print str$(mulp)
    
    ret
tich endp

start:
lap_lai:
    mov num1, sval(input("num 1 = "))
    mov num2, sval(input("num 2 = "))
    call tinh_tong ; Goi ham sum
    print chr$(13,10)
    ;; invoke dung de goi doi so
    ;; call dung de goi khi khong co doi so
    invoke tich, num1, num2
    print chr$(13,10)
    ;------------Lenh lap
    jmp lap_lai ; la nhan danh dau noi chuong trinh nhay toi
    




    
    exit
end start