//Page Number: 10.33
//Example 10.17
clc;
//Given
A=0.2D-3; //V
T=2D-6; //s
n=2*1D-15; //W/Hz


//Pe=Q(z)
//where
x=(A*A*T)/(4*n);
z=sqrt(x);
Pe=(1/2)*erfc(z/1.414);
disp(Pe,'Error probability:');
