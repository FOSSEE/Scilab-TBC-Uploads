

//example 12.1 
clc; funcprot(0);
// Initialization of Variable
rho=1.22;
pi=3.1428;
rhos=518;
rhoav=321;
mu=1.73/10^5;
g=9.81;
d=0.65/1000;
d2=25.5/100;//dia of duct
ms=22.7/60;//mass flow rate
//calculation
e=(rhos-rhoav)/(rhos-rho);
//coeff of quadratic eqn in U
//a*x^2+b*x+c=0
c=-(1-e)*(rhos-rho)*g;
b=150*(1-e)^2*mu/d^2/e^3;
a=1.75*(1-e)*rho/d/e^3;
y=poly([c b a],'U','coeff');
U=roots(y);
Us=ms*4/pi/d2^2/rhos;//superficial speed
Ua=e/e*(U(2)/e+Us/(1-e));
disp(Ua,"the actual linear flow rate through duct in (m/s):")
