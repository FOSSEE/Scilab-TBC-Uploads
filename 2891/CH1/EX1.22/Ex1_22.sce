// Exa 1.22
clc;
clear;
close;
// given :
A=1+3*%i // complex no. A
c=conj(A) // conjugate of complex no. A
magnitude=sqrt((real(A))^2+(imag(A))^2) // magnitude of complex number A
phi=atand(imag(A)/real(A)) // phase of complex number A in degrees
disp(magnitude,"magnitude of complex number A:")
disp(phi,"phase of complex number A in degrees:")
disp(c,"conjugate of complex no. A:")
