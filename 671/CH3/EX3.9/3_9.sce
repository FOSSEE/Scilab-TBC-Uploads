//deactivate all independent sources

function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

L=2
Req=parallel(6,12)+4
T1=L/Req
disp(T1)

C=1/2
Req=2+parallel(6,12)+2
T2=Req*C
disp(T2)
