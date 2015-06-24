clc;clear;
//Example 7.2
//wedge shaped thin film

//given values
x=5893*10^-10;//wavelength of light in metre
n=1.5;//refractive index
y=.1*10^-3;//fringe spacing
 //calculation
z=x/(2*n*y);//angle of wedge
alpha=z*180/%pi;//conversion of radian into degree
disp(alpha,'angle of wedge (in degree) is:');