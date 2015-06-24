//example 14.7
clc; funcprot(0);
// Initialization of Variable
rho=0.00238;
U=80.7;//velocity
l=8;
mu=3.74e-7;
Cd=0.0066;
d=4;
Re=rho*U*l/mu;
disp(Re,"reynolds no");
f=0.0066;//friction factor from Moody's chart
D=1/2*rho*U^2*l*d*f;
disp(D,"drag force in lbf");
clear()
