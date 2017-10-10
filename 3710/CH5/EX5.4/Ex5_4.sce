//Example 5.4, Page Number 205
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
clc;
n2=3.6 //Refractive Index for GaAs
n1=1 //Refractive Index for Air
//From Fresnels Equation

R=((n2-n1)/(n2+n1))**2
R=fpround(R,2)

mprintf("The Reflectance at a GaAs/Air Interface is %0.2f",R);
