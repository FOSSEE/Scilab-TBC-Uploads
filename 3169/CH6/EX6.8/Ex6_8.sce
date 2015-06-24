//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 6.8
//calculation of output voltage

//given data
V1=10//voltage(in kV) at primary winding 
C1=2*10^-6//capacitance(in Farad) on primary side
C2=1*10^-9//capacitance(in Farad) on secondary side
pern=5//energy efficiency(in percentage)

//calculation
n=pern/100
V2=V1*sqrt(n*C1/C2)

printf('The value of output voltage is %3.1f kV',V2)
//correct answer is 100 kV
