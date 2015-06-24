//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 2.5
//calculation of minimum spark over voltage

//given data
A=15//value of A(in per cm)
B=360//value of B(in per cm)
gama=10^-4//value of gama
e=2.178//value of constant

//calculation
Vbmin=(B*e/A)*(log(1+(1/gama)))

printf('the value of minimum spark over voltage is %d V.',Vbmin)
//correct answer is 481 V
