function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

R1=parallel(1,3)

//convert current source to voltage
V=20/1000*2000
I=(40-8)/(2+0.75)

Pr=8*I
disp(Pr)