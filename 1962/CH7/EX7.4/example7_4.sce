
//example 7.4
//page 256
clc; funcprot(0);
//initialisation of variable
mu=18.22*10^-6;
L=0.951;
rho=1.197;
U=8;//speed
L2=5;//length
drag=0.664*sqroot(mu*rho*U^3*L)+0.036*rho*U^2*L2*(mu/rho/U/L2)^(0.2)-0.036*rho*U^2*L*(mu/rho/U/L)^(0.2)
disp(drag,"drag force (N)");
clear
