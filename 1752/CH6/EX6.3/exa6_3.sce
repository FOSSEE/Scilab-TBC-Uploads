//Exa 6.3
clc;
clear;
close;
//given data
d=7.5*10^-2;// in m
x=2;// in m
T_s=70;// in degree C
T_infinite=10;// in degree C
del_T=T_s-T_infinite;
g=9.81;
calculation=4.5*10^10; // value of g*Bita*rho^2*C_p/(miu*k)
K=2.75*10^-2;// in W/mK
// g*Bita*rho^2*C_p/(miu*k) = g*Bita*rho^2/miu^2 * miu*C_p/k = (g*Bita*del_T*x^3/T^2 * miu*C_p/k)/(del_T*x^3)
GrxPr= calculation*del_T*x^3; // value of Gr*Pr
Nu= 0.13*(GrxPr)^(1/3);
// Formula Nu = h*x/k
h= Nu*K/x;// in W/m^2K
A=2*%pi*d;
q=h*A*(del_T);// in W
q=q*60*60;// in J/h
disp("Heat transfer rate is : "+string(q)+" J/h");
