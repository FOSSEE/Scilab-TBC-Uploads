clc
//Initialization of variables
Q=100 //B/lbm
Cp=0.24 //B/lbm F
T1=70+460 //R
T2=550+460 //R
Ts=50+460 //R
//calculations
function [cp]=fun(T)
    cp=Cp/T
endfunction
ds1=intg(T1,T2,fun)
Tf=Q/Cp +T1
ds2=intg(T1,Tf,fun)
Qr=Ts*(ds2)
Qa=Q-Qr
Qun=Ts*(ds1)
Qa2=Q-Qun
//results
printf("Case 1")
printf("\n Change in entropy = %.4f B/lbm R",ds1)
printf("\n case 2")
printf("\n Entropy change = %.4f B/lbm R",ds2)
printf("\n Available energy = %.1f B/lbm",Qa)
printf("\n case 3")
printf("\n Available energy = %.1f B//lbm",Qa2)
