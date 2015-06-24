//Short Circuit AB and convert Curr Source to V source

V=9*5
Isc=(45-9)/6

function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

Ro=parallel(5+1,3)
disp(Ro,Isc)