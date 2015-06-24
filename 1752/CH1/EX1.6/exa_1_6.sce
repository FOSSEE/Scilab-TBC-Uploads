//Exa 1.6
clc;
clear;
close
// given data
T1=50;// in degree C
T1=T1+273;// in K
T2=20;// in degree C
T2=T2+273;// in K
d=5*10^-2;//in m
h=6.5;// in W/m^2K
l=1;//in meter
epsilon=0.8;
sigma=5.67*10^-8;
A=%pi*d*l;// in Square meter
q_conv = h*A*(T1-T2);// in W/m
disp(q_conv,"The heat loss by convection in W/m")
// formula q= sigma*A*F_g12*(T1^4-T2^4) = sigma*A*epsilon*(T1^4-T2^4)    (since A1<<A2, so F_g12=epsilon)
q_rad = sigma*A*epsilon*(T1^4-T2^4);// in W/m
disp(q_rad," Heat loss by radiation in W/m")
q_total= q_conv+q_rad;
disp(q_total,"Total heat loss in W/m is :")



