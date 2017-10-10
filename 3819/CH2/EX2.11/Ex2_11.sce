// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.11

//Given Data Set in the Problem
h=0.1
dens=1000
SG=13.6
g=9.81

//calculations
//1)
//we know that P_B=P_C
//P_B=P_A+Pressure due to 0.1m column length
P_col=dens*g*h
//P_C=P_D+Pressure doe to 10cm mercury
P_C=0+SG*dens*g*h
//hence;
P_A=P_C-P_col
mprintf("The pressure at A is %f N/m^2\n",P_A)
//2)
//If P_A=9810
P_A=9810
//Using f(x)=P_B-P_C
function [f]=F(x)
    f=(P_A+dens*g*(10-x)/100)-(0+SG*dens*g*(10-2*x)/100)
endfunction
x=10;
y=fsolve(x,F)
mprintf("The new difference in mercury is %f cm\n",10-2*y)
