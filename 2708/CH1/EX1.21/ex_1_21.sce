//Example 1.21 // radius of lens
clc;
clear;
//given data :
w=5890D-10;//wavelength used in m
d=.01;//diameter of dark ring in m
r=%pi/6;//angle that light passes in radian
n=3;// order of ring
u=1;// refractive index of medium  between lens  and plate
R=u*(d^2)*cos(r)/(4*n*w);// radius of lens in m
disp(R,"radius of lens in m")
