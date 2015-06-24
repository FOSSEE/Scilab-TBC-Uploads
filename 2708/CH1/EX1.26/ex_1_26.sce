//Example 1.26 // thickness of flim
clc;
clear;
//given data :
u=1.5;// refractive index  of flim between lens and plate
m=10;//no. of fringes shifted in experiment
w=5890D-10;// wavelength of light used in m
t=m*w/(2*(u-1));// thickness of plastic flim in m
t=t*1D9;// to convert in nm
disp(t,"thickness of flim in nm(nanometer)")
