
//example 8.4
//page 290
clc; funcprot(0);
//initialisation of variable
T=20*60;//time
L=10;
H1=5;
pi=3.14;

g=9.81*100;
D1=0.1;
A1=pi/4*D1^2;//area
A2=pi/4*5^2;//area
rho=0.88;//density
H2=5-50/A2;//height
mu=T*rho*A1*g/32/A2/L/log(5/2.45)*D1^2;
disp(mu,"viscosity (poise)");
clear
