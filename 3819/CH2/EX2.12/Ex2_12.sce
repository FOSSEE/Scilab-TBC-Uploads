// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.12

//Given Data Set in the Problem
h2=20/100
SG2=13.6
SG1=1
dens1=1000
dens2=13.6*dens1
g=9.81

//Calculations
//equating pressure above the datum line;
function [f]=F(h1)
    f=(dens2*g*h2)-(dens1*g*h1)
endfunction
h1=10;
H1=fsolve(h1,F)
//When vessel is completely filled with wter;
//Equating pressure in the two limbs
function [g]=G(y)
    g=(dens2*g*(0.2+2*y/100))-(dens1*g*(3+H1+y/100))
endfunction
y=10;
Y=fsolve(y,G)
mprintf("The difference in the mercury level in the two limbs is %f cm\n",(20+2*Y))
