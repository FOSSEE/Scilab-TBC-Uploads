//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.8
//calculation of resistance and capacitance

//given data
t1=8*10^-6//fronttime(in s)
t2=20*10^-6//tailtime(in s)


//calculation
f2=1/t2//frequency corresponding to tail time
fl=f2/5
omega=2*%pi*fl
CR=10*%pi/omega
M=10^-3*(1/CR)
R=2*10^3//assume resistance(in ohm)
C=CR/R

printf('The value of resistance is %3.0e ohm',R)
printf('\nThe value of capacitance is %3.2f microfarad',C*10^6)
