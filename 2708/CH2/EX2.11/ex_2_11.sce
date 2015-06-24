//Example 2.11 // Dispersive power
clc;
clear;
//given data :
c=1/4000;// grating element
w=5D-5;// wavelength of light in cm
n=3;// order of spectrum
D=n/(c*sqrt(1-((n*w/c)^2)));//dispersive power in radian per cm
disp(D,"Dispersive power in rad/sec")
// in book there is calculation mistake
