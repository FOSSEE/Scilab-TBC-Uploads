// Chapter 3 example 8
clc;
clear;

// Variable declaration
xm      = 1.4*10^-5;        // magnetic susceptibility
// B    = uoH
// B'   = uruoH
// ur   = 1+xm
// from above equations
//B'    = (1+xm)B
// percentage increase in magnetic induction = ((B'-B)/B)*100
//      = (((1+xm)B - B)/B)*100
PI    = xm*100;       // percentage increase

// Output
mprintf('Percentage increase = %3.4f percent',PI);
