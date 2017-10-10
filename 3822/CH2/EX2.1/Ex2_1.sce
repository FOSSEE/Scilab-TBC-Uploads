
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 2.1
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
lamda=85*10^-8;//wavelength of multimode fiber m
d=70e-6;//core diameter of the multimode fiber in m
n1=1.46;//refractive index of the fiber
delta=0.015;//relative refractive index difference
a=d/2;//radius=d/2 of core in m
n2=n1-(delta*n1);//refractive index of cladding
c=2*%pi*a/lamda;//constant part of the V-Number formula
V=c*((n1^2-n2^2))^0.5;// V-number
M=V^2/2;//total number of guided modes in the stepindex fiber
mprintf("\n Refractive Index of the cladding is=%.2f ",n2);
mprintf("\n Normalized frequency V-number of the fiber is =%.2f ",V);
mprintf("\n Total number of guided modes in the fiber is= %.0f ",M);
//The answers vary due to rounding 
