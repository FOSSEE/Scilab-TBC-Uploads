function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

R1=parallel(5,40)+15
Req=parallel(R1,15)+10
i=6/(1000*Req)

ix=i*R1/(R1+15)
disp(ix)

P=i*i*10000  //////wrongly done in the book as ix*ix*10000
disp(P)