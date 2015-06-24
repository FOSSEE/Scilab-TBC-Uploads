function [Rab,Rbc,Rca]=star_to_delta(Ra,Rb,Rc)
    X=Ra*Rb+Rb*Rc+Rc*Ra
    Rab=X/Rc
    Rbc=X/Ra
    Rca=X/Rb
endfunction

function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

[Rx,Ry,Rz]=star_to_delta(8,4,2)

Req_ad=parallel(parallel(4,Rx)+parallel(12,Rz),parallel(3,Ry))
disp(Req_ad)