//Example 1.22 // wavelength used
clc;
clear;
//given data :
R=3;//radius of lens in m
n=8;// order of bright ring
D=.72D-2;// diameter of bright ring in m
u=1;// refractive index of medium between lens  and plate
w=(D^2)/((2*n-1)*2*R);// wavelength used in m
w=w*1D10;//to convert in A
disp(w,"wavelength of light used in A")
