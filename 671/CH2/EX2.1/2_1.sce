function s=series(r1,r2)
    s=r1+r2
endfunction

function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

r1=series(12,8)
r2=parallel(20,r1)
r3=series(r2,50)
r4=parallel(30,r3)
r5=series(10,r4)
r6=series(r5,20)
Req_ab=parallel(r5,40)
disp(Req_ab)

r7=40+20+10  //series
Req_bc=parallel(r4,r7)
disp(Req_bc)