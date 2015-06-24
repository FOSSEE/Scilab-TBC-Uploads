//Ex 2.1
clc;clear;close;
format('v',6);
N=200;//turns
c=600;//mm(circumference)
A=500;//m^2(Cross section area)
I=4;//A(Current through coil)
H=I*N/(c*10^-3);//A/m(Magnetic field strength)
disp(H,"(a) Magnetic field strength(A/m)");
mu0=4*%pi*10^-7;//constant
FD=mu0*H*10^6;//micro T(Flux density)
disp(FD,"(b) Flux density(micro T)");
Ft=FD*A*10^-6;//micro Wb(Total flux)
disp(Ft,"(c) Total flux(micro Wb)");
//Answer in the book is wrong.
