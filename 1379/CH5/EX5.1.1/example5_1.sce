

//exapple 5.1 
clc; funcprot(0);
// Initialization of Variable
rho=999.7;
g=9.81;
mu=1.308/1000;
s=1/6950;
b=0.65;
h=32.6/100;
n=0.016;
//calculation
//part1
A=b*h;
P=b+2*h;
m=A/P;
u=s^.5*m^(2/3)/n;
Q=A*u
disp(Q,"volumetric flow rate (m^3/s):");
C=u/m^0.5/s^0.5;
disp(C,"chezy coefficient (m^0.5/s):");
a=-m*rho*g*s/mu;//delu/dely
disp(a,"velocity gradient in the channel (s^-1):")

