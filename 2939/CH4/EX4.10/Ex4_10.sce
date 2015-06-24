
// Ex4_10
clc;

// Given
E=2.5;// in MeV
// Solution:
k=0.693/(5.27*3.16*10^7);// decay constant
A=k*0.1*6.022*10^23;// atoms/s
A1=3.6*10^3*A;// atoms /hr

E1=A1*E*1.6*10^-13*10^-3;//Energy in KJ/hr

printf("The total energy dissipate per hour is = %f KJ",E1)

