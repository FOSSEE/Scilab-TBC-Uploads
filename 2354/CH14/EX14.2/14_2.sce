//example 14.2
clc; funcprot(0);
// Initialization of Variable
rho=1.94;
V=8.7;
D=0.0625;
g=32.2;
V2=19.6;
l=60;
z2=20;
mu=2.34e-5;
Kl=2;//constant
Re=rho*V*D/mu;
disp(Re,"reynolds no");
f=0.0215;//friction factor from Moody's chart
P1=rho*g*z2+1/2*rho*(V2^2-V^2)+rho*f*l/D*V^2/2;
P1=P1/144+rho*V^2/2*(10+4*1.5+Kl)/144;;
disp(P1,"entire pressure drop in psi");
clear()
