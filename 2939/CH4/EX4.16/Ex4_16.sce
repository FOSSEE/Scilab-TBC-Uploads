
// Ex4_16
clc;

// Given:
m=4*10^-3;// in gms
M=210;
E=0.34;// in MeV
// Solution:

N=(m*6.022*10^23)/M;
k=0.693/(5*24*3600);// in s^-1
A=N*k;// in dis/s
// Energy released at 0.34 MeV per dis/s will be
E1=E*A;// in MeV/s
E2=E1*1.6*10^-13;// watts

printf("The rate of energy emission is %f W",E2)

