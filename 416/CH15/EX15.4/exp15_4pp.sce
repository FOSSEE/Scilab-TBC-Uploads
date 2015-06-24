clc
clear
disp("example 15.4")
c=50 //conduntance
a=0.2 //area
d=0.24 //distence between electrodes
v=1800 //gas velosity
b=1 //flux density
k=0.7 
ov=k*b*v*d
tp=c*d*a*b^2*v^2*(1-k)
eff=k
op=eff*tp
e=b*v*d
rg=d/(c*a)
si=e/rg
maxp=e^2/(4*rg)
printf("output voltage %.1fV \ntotal power %.4fMW \n efficiency %.1f \n output power %fMW \n open circuit voltage %dV \n internal resistence %.3fohm \n short circuit current %dA \n maximum power output is %.3fMW",ov,tp/10^6,eff,op/10^6,e,rg,si,maxp/10^6)