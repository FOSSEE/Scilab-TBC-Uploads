// Exa 1.23
clc;
clear;
close;
// given :
rho=5 // magnitude of the complex number A
phi=45 // phase of a complex number A in Degrees
x=rho*cosd(phi) // real part of complex number A
y=rho*sind(phi) // imaginary part of complex number A
A=x+y*(%i) // complex number A
disp(x,"real part of complex number A:")
disp(y,"imaginary part of complex number A:")
disp(A,"complex number A:")
