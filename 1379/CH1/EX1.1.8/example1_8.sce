

//exapple 1.8 
clc; funcprot(0);
// Initialization of Variable
rho=908;
mu=3.9/100;
g=9.81;
pi=3.14;
d=0.105;
l=87;
h=16.8;
e=0.046/1000;//absolute roughness
//calculations
//part1
P=-rho*g*h;//change in pressure
a=-P*rho*d^3/4/l/mu^2//a=phi*Re^2
//using graph given in book(appendix)
Re=8000;
u=mu*Re/rho/d;
Q=u*pi*d^2/4;
disp(Q,"Volumetric flow rate initial (m^3/s):");
//part 2
W=320;
Pd=W*rho;//pressure drop by pump
P=P-Pd;
a=-P*rho*d^3/4/l/mu^2//a=phi*Re^2
//using graph given in book(appendix)
Re=15000;
u=mu*Re/rho/d;
Q=u*pi*d^2/4;
disp(Q,"Volumetric flow rate final(part 2) (m^3/s):");


