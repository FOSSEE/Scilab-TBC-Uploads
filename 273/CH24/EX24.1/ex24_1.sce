clc;clear;
//Example 24.1
//Fiber optics

//given values
n=1.5;//refractive index
x=.0005;//fractional index difference

//calculation
u=n*(1-x);
disp(u,'cladding index is');
alpha=asin(u/n)*180/%pi;
disp(alpha,'critical internal reflection angle(in degree) is');
theta=asin(sqrt(n^2-u^2))*180/%pi;
disp(theta,'critical acceptance angle(in degree) is');
N=n*sqrt(2*x);
disp(N,'numerical aperture is');