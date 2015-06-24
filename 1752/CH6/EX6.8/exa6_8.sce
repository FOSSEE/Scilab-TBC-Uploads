//Exa 6.8
clc;
clear;
close;
//given data
Pr=0.712;
K=0.026;// in W/mK
delta=1.57*10^-5;// in m^2/s
T_s=320;// in K
T_infinite=280;// in K
del_T=T_s-T_infinite;
T_f=(T_s+T_infinite)/2;// in K
Bita=1/T_f;
d1=20;// in cm
d2=30;// in cm
x=(d2-d1)/2;// in cm
x=x*10^-2;// in m
g=9.81;
Gr=(g*Bita*del_T*x^3)/delta^2;
Ra=Gr*Pr;

// Formula Nu= h*x/K =0.228*Ra^(0.226)
h=0.228*Ra^(0.226)*K/x;// in W/m^2K
A=%pi*(d1*10^-2)^2;
q=h*A*del_T;// w
disp("Heat transfer rate is : "+string(q)+" watt");
