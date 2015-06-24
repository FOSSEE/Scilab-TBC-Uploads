//Example 1.31 // thickness of flim
clc;
clear;
//given data :
w1=6.1D-5;//wavelength of light fall in cm
w2=6D-5;// wavelength of light fall in cm
u=1.33;// refractive index soap flim
si=4/5;//sine of incident angle
t=w1*w2/(2*(w1-w2)*sqrt(u^2-si^2))
disp(t,"thickness of flim in cm")

