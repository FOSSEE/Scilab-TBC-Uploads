

//exapple 9.3 
clc; funcprot(0);
// Initialization of Variable
rhog=1200;//density of glycerol
mu=1.45;
pi=3.1428;
g=9.81;
rhos=2280;//density of sphere
v=0.04;//terminal velocity;
a=2*mu*g*(rhos-rhog)/v^3/3/rhog^2;//a=Cd/2/Re
//using graph of Cd/2/Re vs Re
Re=0.32;
d=Re*mu/v/rhog;
disp(d , "Diameter of sphere in (m):");
