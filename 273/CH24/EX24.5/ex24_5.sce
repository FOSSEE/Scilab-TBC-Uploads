clc;clear;
//Example 24.5
//calculation of numerical aperture and maximum acceptance angle

//given values
n=1.480;//core refractive index
u=1.47;//index of glass
l=850*10^-9;//wavelength of light
V=2.405;//V-number

//calculation
r=V*l/sqrt(n^2-u^2)/%pi/2;//in m
disp(r*10^6,'core radius in micrometre is');
N=sqrt(n^2-u^2);
disp(N,'numerical aperture is');
alpha=asin(N)*180/%pi;
disp(alpha,'max acceptance angle is');