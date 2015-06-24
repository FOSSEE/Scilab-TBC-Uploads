//Example 8.2 // Numerical Aperture & acceptance angle
clc;
//given data :
u1=1.62;//refractive index of core
u2=1.52;// refractive index of clad
A=asin(sqrt(u1^2-u2^2));// acceptance angle in radian
NA=sin(A);// numerical aperture
A=A*180/%pi;// to convert in degree
disp(A,"Acceptance angle in degree")
disp(NA,"Numerical Aperture")
