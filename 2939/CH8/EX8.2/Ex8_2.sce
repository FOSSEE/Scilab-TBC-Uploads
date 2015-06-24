// Ex8_2
clc;

// Given:
N=10^5;// electron multiplication
v=10^-6;// in V
e=1.6*10^-19;// electron charge

// Solution:
e1=N*e;
C=e1/(2*v);
C1=C*10^9;
printf("The capacitance that would be required is = %f nF",C1)
