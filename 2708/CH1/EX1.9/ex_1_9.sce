//Example 1.9 // wavelength of ligth  
clc;
clear;
//given data :
u=1.5;//referactive index of bi-prism
a=50;// distance between source & prism in cm
c=50;// distance between prism & screen in cm
A=179;// angle of bi-prism in degree
D=a+c;//distance between source and screen in cm
b=.0135;//fringes width in cm
al=(180-A)/2;// angle with base in degree
al=al*%pi/180;//to convert in radian
w=2*al*(u-1)*a*b/D// wavelength in cm
disp(w*1D8,"wavelength of light in Angstrom")
