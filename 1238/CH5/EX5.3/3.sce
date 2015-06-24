//calculating frequency and duty cycle//
//example 3//
clc
//clears the command window//
clear
//clears// 
Ra=6.8*10^3
Rb=3.3*10^3
C=.1*10^-6
T1=.693*(Ra+Rb)*C;//charging time constant//
T2= .693*Rb*C;//discharging time constant//
T=T1+T2;//total time//
f=1/T//frequency//
printf('frequency=%f hertz\n',f);//result is displayed//
D=T2/T;//duty cycle//
D=D*100
printf('duty cycle=%f percent',D);//result is displayed//
