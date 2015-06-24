//calculating frequency and duty cycle//
//example 2//
clc
//clears the command window//
clear
//clears// 
Ra=10*10^3
Rb=10*10^3
C=.001*10^-6
T1=.693*(Ra+Rb)*C;//charging time constant//
T2=.693*Rb*C;//discharging time constant//
T=T1+T2;//total time//
f=1/T;//frequency//
printf('frequency=%f hertz\n',f);//result is displayed//
D=T2/T;//duty cycle//
D=D*100
printf('duty cycle=%f percent',D)
//result is displayed//
