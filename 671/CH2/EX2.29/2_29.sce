function p=parallel(r1,r2)
    p=r1*r2/(r1+r2)
endfunction

//as seen from ab
Vth1=30*60/(30+60)
Rth1=parallel(30,60)

//as seen from cd
Vth2=80*40/(40+60)
Rth2=parallel(40,60)

Vnet=60+Vth1-Vth2
Rnet=Rth1+Rth2

disp(Rnet,Vnet)