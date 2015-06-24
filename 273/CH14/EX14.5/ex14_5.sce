clc;clear;
//Example 14.5
//calculation of no of cavity modes

//given values
c=3*10^8;//velocity of light in m/s
n=1.75;//refractive index
l=2*10^-2;//length of ruby rod in m
x=6943*10^-10;//wavelength in m
y=5.3*10^-10;//spread of wavelength in m

//calculation
d=c/n/l;
f=c*y/x^2;
m=f/d;
disp(m,'no of modes is');
