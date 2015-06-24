//Page Number: 10.34
//Example 10.18
clc;
//Given
A=0.2D-3; //V
A1=A/1.414;

T=2D-6; //s
n=2*1D-15; //W/Hz


//Pe=Q(z)
//where
x=(A1*A1*T)/(n);
z=sqrt(x);
Pe=(1/2)*erfc(z/1.414);
disp(Pe,'Error probability:');
