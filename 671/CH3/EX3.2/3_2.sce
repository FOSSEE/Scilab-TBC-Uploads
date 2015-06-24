function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

Leq=1+parallel(2,2)+parallel(parallel(3,3),3)

disp(Leq)