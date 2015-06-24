//Estimate Hysteresis energy loss per unit volume
//Ex:14.2
clc;
clear;
close;
w=80+80;//width of loop in A/m from graph
h=0.15+.15;//height of loop in Wb/sqm
a=w*h;//area of the loop in J
disp(a,"Hysteresis energy loss per unit volume of magnetic material during one cycle (in J) = ");