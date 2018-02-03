// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.16

//Given Data Set in the Problem
sg1=1.5
sg2=0.9
g=9.81
dens1=sg1*1000
dens2=sg2*1000

//calculations
pA=1*10^4*g
pB=1.8*10^4*g
//pressure above X-X in left limb is p_left=13.6*1000*g*h+dens1*g*(2+3)+pA and p_right=dens2*g*(h+2)+p
function [f]=F(h)
    f=13.6*1000*g*h+dens1*g*(2+3)+pA-(dens2*g*(h+2)+pB)
endfunction
h0=10;
h=fsolve(h0,F)
mprintf("\nTHE DIFFERENCE IN MERCURY LEVELS IS %f cm\n",h*100)
