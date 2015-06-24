
//Ex4_4

clc;

// Given:
t1=12.3;// in yrs
L=6.022*10^23;
// Solution:
k=.693/(t1*3.16*10^7);// in s^-1
A=(2*L)/(2.24*10^4);// no. of atoms
a1=A*k;// dis per s
a=a1/(3.7*10^10);// activity in Ci/cm^3
printf("The activity in Ci/cm^3 = %f",a)
