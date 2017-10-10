//Example 11.11
clc;
//Wein's Bridge
//Given values of bridge elements
R1=4700;
C1=5*10^-9;
C3=10*10^-9;
R3=10000;
//Frequency of the circuit
x=sqrt(C1*C3*R1*R3);
f=invr(2*%pi*x);
printf('\nFrequency of the circuit is %.2f Hz',f)