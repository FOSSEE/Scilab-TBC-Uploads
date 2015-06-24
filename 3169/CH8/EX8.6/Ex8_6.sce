//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 8.6
//calculation of value of voltage at the receiving end in Bewley lattice diagram

//given data
alpha=0.8

//calculation
Vut=2*alpha/(1+alpha^2)

printf('The value of voltage at the receiving end in Bewley lattice diagram is %3.4fu(t) V',Vut)
