
//example 8.1
//page 288
clc; funcprot(0);
//initialisation of variable
L=10;//length
R=0.002;//radius
P1=200;
P2=260;
pi=3.14;
rho=0.81*1000;
mu=19.1/10000;
Sp=-(P1+0.81*6*9.81-P2)/L;//slope of pressue
taumax=R/2*Sp*1000;
disp(taumax,"maximum shear force(N/m^2)");
vmax=R^2/4/mu*Sp*1000;
disp(vmax,"maximum velocity(m/s)");
Q=pi*R^4/8/mu*Sp*1000;
disp(Q,"flow rate (m^3/s)");
R=vmax/2/mu*2*R*rho;
disp(R,"reynolds no.");
clear
