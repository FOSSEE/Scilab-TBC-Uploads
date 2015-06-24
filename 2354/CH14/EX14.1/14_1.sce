//example 14.1
clc; funcprot(0);
// Initialization of Variable
rho=1.23;//density
V=50;//velocity
D=0.004;//diameter
l=0.1;
mu=1.79e-5;
Re=rho*V*D/mu;
disp(Re,"reynolds no");
f=0.028;//friction factor from Moody's chart
delP=f*l/D*.5*rho*V^2/1000.0;
disp(delP,"pressure diffference in kPa");
clear()
