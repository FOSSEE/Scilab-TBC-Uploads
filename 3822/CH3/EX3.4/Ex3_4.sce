

//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.4
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
a=4*10^-6;//radius in m
n1=1.5;//core refractive index
lamda=1.55*10^-6;//operating wavelength in m
delta=0.003;//relative refractive index difference between core and cladding
c=(2*delta)^0.5;//constant value
lamdac=(c*2*%pi*a*n1)/2.405;//cut off wavelength for mono mode
Rcs=(20*lamda)/((delta)^1.5)*((2.748-((0.996)*(lamda/lamdac)))^-3);//critical radius of curvature
mprintf("\n Critical radius of curvature is= %.2fmm",Rcs*1e3);//multiplication by 1e3 to convert unit to mm//the answer given in textbook is wrong

