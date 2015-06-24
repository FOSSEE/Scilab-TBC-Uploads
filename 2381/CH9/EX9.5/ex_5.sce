//Example 5// Amplitude
clc;
clear;
close;
//given data :
v=(1/3)*10^3;// in m/s
p=1.25;// in kg/m^3
E=v^2*p;
n=10^4;// in rad/sec
disp(E,"Bulk modulus of medium,E(N/m^2) = ")
I=10^-12;// in W/m^2
A=sqrt(I/(2*%pi^2*n^2*p*v));
disp(A,"Amplitude of wave,A(m ) = ")
P=sqrt(2*I*p*v);
disp(P,"Pressure amplitude,P(N/m^2) = ")
// answer A and E is wrong in textbook
