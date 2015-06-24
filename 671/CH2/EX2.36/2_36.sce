function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

Req=1+parallel(parallel(1,1),1)

disp(Req)