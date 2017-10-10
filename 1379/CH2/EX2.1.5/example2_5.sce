//exapple 2.5 
clc; funcprot(0);
// Initialization of Variables
pi = %pi;
T=273+15;
rho=999;
rhom=13559;//density of mercury
g=9.81;
P2=764.3/1000*rhom*g;
R=8.314;
M=16.04/1000;
d=4.5/1000;
A=pi*d^2/4;
G=0.75/1000;//mass flow rate
delP=(1-exp(R*T*G^2/2/P2^2/M/A^2))*P2;
h=-delP/rho/g;
disp(h*100,"height of manometer in (cm)")