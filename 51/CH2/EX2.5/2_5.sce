clc;
clear;
gamma1=9.8;//kN/m^3
gamma2=15.6;//kN/m^3
h1=1;//m
h2=0.5;//m
//pA-(gamma1)*h1-h2*(gamma2)+(gamma1)*(h1+h2)=pB
//pA-pB=diffp
diffp=((gamma1)*h1+h2*(gamma2)-(gamma1)*(h1+h2));
disp("kPa",diffp,"The difference in pressures at A and B =")
