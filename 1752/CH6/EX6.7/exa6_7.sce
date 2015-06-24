//Exa 6.7
clc;
clear;
close;
//given data
L=3;// in m
delta=0;
hx='10*x^(-1/4)'
// (a) Average heat transfer coefficient
h=1/L*integrate(hx,'x',delta,L);
disp("(a) Average heat transfer coefficient is : "+string(h)+" W/m^2K")

// (b) Heat transfer rate
A=3*.3;// in m^2
Tp=170;// plate temp. in degree C
Tg=30;// gas temp. in degree C
del_T=Tp-Tg;
q=h*A*del_T;// in W
disp("(b) Heat transfer rate is : "+string(q)+" W")

// (c) 
x=2;// in m
qx_by_A= 10*x^(-1/4)*(Tp-Tg);
disp("Local heat flux 2 m from the leading edge is : "+string(qx_by_A)+" W/m^2");
