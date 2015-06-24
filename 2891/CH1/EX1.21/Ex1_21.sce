// Exa 1.21
clc;
clear;
close;
// given :
A=2+4*%i // complex number A
magnitude=sqrt((real(A))^2+(imag(A))^2) // magnitude of complex number A
phi=atand(imag(A)/real(A)) // phase of complex number A in degrees
disp(magnitude,"magnitude of complex number A:")
disp(phi,"phase of complex number A in degrees:")
