//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.1
//calculation of capacitance of generating voltmeter

//given data
Irms=2*10^-6//current(in A)
V1=20*10^3//applied voltage(in V)
V2=200*10^3//applied voltage(in V)
rpm=1500//assume synchronous speed(in rpm) of motor

//calculation
Cm=Irms*sqrt(2)/(V1*(rpm/60)*2*%pi)
Irmsn=V2*Cm*2*%pi*(rpm/60)/sqrt(2)

printf('The capacitance of the generating voltmeter is %3.1f pF',Cm*10^12)
