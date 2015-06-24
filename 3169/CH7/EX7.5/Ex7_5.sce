//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.5
//calculation of capacitance needed for correct compensation

//given data
Cgdash=20*10^-12//ground capacitance(in farad)
n=15//number of capacitors
r=120//resistance(in ohm)
R2=5//resistance(in ohm) of LV arm

//calculation
Ce=(2/3)*n*Cgdash
R1=n*r/2
T=R1*Ce/2
C2=T/R2

printf('The value of capacitance needed for correct compensation is %3.1e F or %d nf',C2,round(C2*10^9))
