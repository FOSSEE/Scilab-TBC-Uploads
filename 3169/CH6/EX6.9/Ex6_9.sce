//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 6.9
//calculation of self capacitance and leakage reactance

//given data
Vi=350*10^3//rating(in VA)
V=350*10^3//secondary voltage(in V)
V1=6.6*10^3//primary voltage(in V)
perV=8//percentage ratedd voltage
perR=1//percentage rise
f=50//frequency(in Hz)

//calculation
I=Vi/V
Xl=(perV*V)/(100*I)
I0=perR*V/(100*Xl)
Xc=((1+(perR/100))*V)/I0
C=1/(Xc*2*%pi*f)

printf('The value of self capacitance is %3.3f nF',C*10^9)
printf('\nThe value of leakage reactance is %d kohm',Xl*10^-3)
