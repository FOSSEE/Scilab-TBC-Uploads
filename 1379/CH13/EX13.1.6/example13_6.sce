

//exapple 13.6 
clc; funcprot(0);
// Initialization of Variable
rho=1.210;//density of air
mu=1.78/10^5;
g=9.81;
rhos=2655;//density of ore
pi=3.1428;
d=0.095;
dp=2*10^-6//particle diameter
dt=0.333;//dia of cyclone separator
h=1.28;
//calculation
U=dp^2*g*(rhos-rho)/18/mu;
Q=0.2*(pi*d^2/4)^2*d*g/U/pi/h/dt;
disp(Q,"volumetric flow rate in(m^3/s):")
