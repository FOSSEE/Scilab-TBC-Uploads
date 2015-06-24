
//example 7.2
//page 245
clc; funcprot(0);
//initialisation of variable
y=0.3;
sigma=103;//stress
rho=1000;//density
k=0.7/y;//k=du/dy;
kappa=sqroot(sigma/rho/y^2/k^2);
l=kappa*y;
disp(l,"mixing length (m)");
neta=rho*l^2*k;
disp(neta,"eddy viscosiy(Nm/s^2)");
clear
