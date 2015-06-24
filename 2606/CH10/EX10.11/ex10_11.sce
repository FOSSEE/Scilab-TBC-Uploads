//Page Number: 10.28
//Example 10.11
clc;
//Given
Rb=1D+6; //b/s
T=1D-5;
N0=2*0.5D-7; //W/Hz

//From table for Q(z)=10^-5
z=4.25;

//As z=sqrt(A*A*T/2*N0)
x=((z^2)*2*N0)/T;
A=sqrt(x);
disp(A,'Required value of A:');

//(b) Bandwidth
//B=1/(2*(T/2))
//Therefore B=1/T
B=(1/T);
disp('Hz',B,'Bandwidth:');
