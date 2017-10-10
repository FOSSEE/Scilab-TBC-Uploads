clc;
clear all;
disp("heat flow through wire")
k=0.12;// W/(m*C)
r1=2/2;//mm
r2=r1+0.8;//mm
ho=35;// W/(m^2*K)
rc=1000*k/ho;//mm
disp("mm",rc,"critical radius of insulation =") 

disp("i) heat flow through an insulated wire") 
Rthcd=(log(r2/r1))/k;
Rthcv=1000/(ho*r2);
Rth12=Rthcd+Rthcv;
//Q12=2*pi*L*(t1-tair)/Rth12;

Rthcd=(log(rc/r1))/k;
Rthcv=1000/(ho*rc);
Rth1c=Rthcd+Rthcv;
//Q1c=2*pi*L*(t1-tair)/Rth1c;
//(Q1c-Q12)/Q12*100
change=(1/Rth1c-1/Rth12)*100/(1/Rth12)
disp("%")
