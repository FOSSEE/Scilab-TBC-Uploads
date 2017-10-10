
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 2.2
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
n1=1.48;//core refractive index of a step-index fiber
delta=0.015;//relative index difference between the core and cladding
lamda=85*10^-8;//wavelength of the fiber in m
V=2.405;//value of V-number for single mode 
c=(2*delta)^0.5;//constant value 
a=(V*lamda)/(2*%pi*n1*c);//value of radius of core diameter in m
d=2*a;//diameter of core diameter in m
mprintf("\n Core diameter of the step index fiber is =%.2f um ",d*1e6);
delta1=0.0015;//relative index difference between the core and the cladding
c1=(2*delta1)^0.5;//constant value
a1=(V*lamda)/(2*%pi*n1*c1);//value of radius of core diameter in m
d1=2*a1;//diameter of core diameter in m
mprintf("\n Core diameter of the step index fiber is= %.2f um ",d1*1e6);//multiplication by 1e6 to convert the unit from m to um
//the answer vary due to rounding
