

//exapple 9.4 
clc; funcprot(0);
// Initialization of Variable
rhoa=1.218;//density of air
mu=1.73/100000;
pi=3.1428;
g=9.81;
rhop=2280;//density of polythene
d=0.0034;//diameter
a=4*d^3*(rhop-rhoa)*rhoa*g/3/mu^2;//a=Cd*Re^2
//using graph of Cd*Re^2 vs Re
Re=2200;
v=Re*mu/d/rhog;
disp(v , "The terminal vrlocity in (m/s)");
