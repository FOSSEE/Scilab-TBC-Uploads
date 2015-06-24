
//example 11.5
//page 431
clc; funcprot(0);
//initialisation of variable
P1=1.5;//pressure
T1=500//40F=500R in temperature
V1=1500;
k=1.4;
R=1716;
c1=sqroot(k*R*T1);
M1=V1/c1;
M2=sqroot((2+(k-1)*M1^2)/(2*k*M1^2-k+1));
P2=P1*(1+k*M1^2)/(1+k*M2^2);
disp(P2,"pressure downstream (psia)");
T2=T1*(1+0.5*(k-1)*M1^2)/(1+0.5*(k-1)*M2^2);
T2=T2-460;
disp(T2,"temperature downstream (Farenheit)");
clear
