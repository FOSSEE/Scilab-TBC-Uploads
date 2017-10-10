// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.20

//Given Data Set in the Problem
dens=1000
g=9.81
SG1=1.2
SG2=1.0
dens1=SG1*dens
dens2=SG2*dens
SG_oil=0.7
dens_oil=SG_oil*dens
p=poly(0,"p")
pA=p
pB=p
x1=30/100

//calculations 
//equating pressure in left and rght limbs ,we get;
function [f]=F(h)
    f=(pA-dens1*g*x1-dens_oil*g*h)-(pB-dens2*g*(h+x1))
endfunction
h=10;
y=fsolve(h,F)
mprintf("The reading h is %f cm\n",y*100)
