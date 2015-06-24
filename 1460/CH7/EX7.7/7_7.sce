clc
//initialization of variables
P1=100 //lb/in^2
T1=240+460 //R
T2=740+460 //R
cp=0.171 //B?lbm F
//calculations
dq=cp*(T2-T1)
function [ds]=s(T)
    ds=cp/T
endfunction
ds=intg(T1,T2,s)
cpm=0.247
cv=cpm-53.3/778
Q=cv*(T2-T1)
ds2=cv*log(T2/T1)
v1=53.3*T1/(144*P1)
P2=P1*(T2/T1)
disp("from table 6")
h1=167.56
phi1=0.66321
u1=h1-144*P1*v1/778
h2=291.30
phi2=0.79628
u2=h2-144*P2*v1/778
Q3=u2-u1
ds3=phi2-phi1-53.3*log(P2/P1) /778
disp("Part a")
printf("\n work is zero")
printf("\n Heat = %.1f B/lbm",dq)
printf("\n Change in entropy = %.4f B/lbm R",ds)
disp("Part b")
printf("\n Heat = %.1f B/lbm",Q)
printf("\n Change in entropy = %.4f B/lbm R",ds2)
disp("Part c")
printf("\n Heat low = %.1f B/lbm",Q3)
printf("\n Change in entropy = %.5f B/lbm R",ds3)
