//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda0=633e-9;//Wavelength in m
b=62.5e-6;//Outer radius of silica fiber in m
N=1;//Number of loops formed by the fiber
C=0.133;//Value of constant C for a silica fiber at 633 nm

R=8*%pi*C*(b^2)*N/lambda0;//Radius of the circular loop corresponding to a quarter plate formed by the fiber in m
mprintf("\n R= %.2f cm",R/1e-2);//Division by 10^(-2) to convert into cm
//The answers vary due to round off error
