function [Ra,Rb,Rc]=delta_to_star(Rab,Rbc,Rca)
    X=Rab+Rbc+Rca
    Ra=Rab*Rca/X
    Rb=Rab*Rbc/X
    Rc=Rca*Rbc/X
endfunction

function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

[R1,R2,R3]=delta_to_star(4,12,8)
Req=10+4+parallel(R1+15,R2+16)

I=12/Req
disp(I)