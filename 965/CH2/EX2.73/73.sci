clc;
clear all;
disp("increase in heat dissipation")
k=0.174;// W/(m*C)
r1=6.5/2;//mm
ho=8.722;// W/(m^2*K)
rc=1000*k/ho;//mm
L=1;//m
t1=60;// degree C
tair=20;// degree C
disp("mm",rc,"critical radius of insulation =") 
t=rc-r1;
disp("mm",t,"minimum insulation of thickness t = ")

disp("i) without insulation ") 
Rthcv=1000/(ho*r1);
Q1=2*3.1416*L*(t1-tair)/Rthcv;
disp("W/m",Q1," heat flow without insulation Q1 =") 
Rthcd=(log(rc/r1))/k;
Rthcv=1000/(ho*rc);
Rth2=Rthcd+Rthcv;
Q2=2*3.1416*L*(t1-tair)/Rth2;
disp("W/m",Q2," heat flow with insulation Q2 =") 
change=(Q2-Q1)*100/Q1;
disp("%",change,"Percent increase in heat dissipation =")
