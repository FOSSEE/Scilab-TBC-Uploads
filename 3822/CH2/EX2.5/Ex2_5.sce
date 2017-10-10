
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 2.5
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
a=30*10^-6;//radius in m
n1=1.50;//refractive index of the core
n2=1.49;//refractive index of the cladding
lamda=0.85e-6//operating wavelength in m
V=((2*%pi*a/lamda))*sqrt(n1^2-n2^2)//V number
M=(1/2)*V^2//no. of guided modes in fiber
mprintf("\n No. of Guided modes is = %.0f ",M);
PcladbyP=(4/3)*M^-0.5//power in cladding to total power
PcorebyP=1-PcladbyP//power in core to total power
PcorebyPclad=PcorebyP/PcladbyP//power in core to power in cladding
mprintf("\n ratio of power in core to power in cladding is = %.0f ",PcorebyPclad);
//The answer vary due to rounding
