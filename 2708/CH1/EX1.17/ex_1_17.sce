//Example 1.17 // fringe width
clc;
clear;
//given data :
x=.15;// air flim base width in m
w=6D-7;// wavelength in m
ab=0.05D-3;//length wire in m
u=1;//refractive index of air
theta=ab/x;
b=w/(2*u*theta);//fringes width
disp(b,"width of fringes in meter")
