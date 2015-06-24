
//example 7.3
//page 256
clc; funcprot(0);
//initialisation of variable
U=1;//speed
L=2;//length
rho=1260;//density
mu=0.862;//viscosity
tau=[0 0 0 0 0];
x=[0.1 0.5 1 1.5 2];
delta=[4.13 9.24 13.07 16.01 18.48];
for i=1:5
    tau(i)=10.94/sqroot(x(i));
end
plot(x,delta);
plot(x,tau,'r');
drag=0.664*sqroot(mu*rho*U^3*L);
disp(drag,"drag force (N)");
clear
