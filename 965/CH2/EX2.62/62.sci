clc;
clear all;
disp("Rate of boiling")
r1=.5/2;//m
r2=r1+25/1000;//m
t1=-196;//degree C
t2=27;//degree C
k=0.0017;// W/(m*C)
ho=20;// W/(m^2*C)
Q=4*3.1416*(t1-t2)/((r2-r1)/(k*r1*r2)+1/(ho*r2*r2));
disp("W",-1*Q,"Rate of heat in Q =") 
hfg=2*10^5;
mN2=(-1*Q*3600)/hfg;
disp("kg/h",mN2,"Rate of N2 boil off mN2 =")
