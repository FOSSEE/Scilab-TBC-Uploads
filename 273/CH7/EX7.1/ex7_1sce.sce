clc;clear;
//Example 7.1
//plane parallel thin film

//given values
x=5890*10^-10;//wavelength of light in metre
n=1.5;//refractive index
r=60*%pi/180;//angle of refraction in degree
 //calculation
t=x/(2*n*cos(r));
disp(t*10^6,'thickness of plate (in micrometre) is:');