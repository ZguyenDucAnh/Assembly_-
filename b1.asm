include \masm32\include\masm32rt.inc
.data
    ;<ten_bien> <kieu_du_lieu>; VD: num1 dd 0
    num1 dd 0
    

.code
start:
    print chr$("I LOVE FPT")
    print chr$(13,10)
    print str$(1000)
    print chr$(13,10)
    ;nhap 1 so tu ban phim
    ;mov -> num1 = sval(input("so nhap vao: "))
    
    mov num1, sval(input("so nhap vao: "))



    exit
end start

;chr$: chuoi
;str$: number