function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

R1=parallel(parallel(40,60),80+40)

Req=20+parallel(10+R1,30)
disp(Req)