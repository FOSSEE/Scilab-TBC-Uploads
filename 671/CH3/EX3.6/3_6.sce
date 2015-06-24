function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

Lbc=parallel(1/10,1/20)
Leq=1/50+Lbc
disp(Leq)

Vbc=Lbc*150
disp(Vbc)