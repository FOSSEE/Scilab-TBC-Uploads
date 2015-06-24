//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.2
//Design of a peak reading voltmeter

//given data
r=1000//ratio is 1000:1
V=100*10^3//read voltage(in V)
R=10^7//value of resistance(in ohm)

//calculation
//take range as 0-10 microampere
Vc2=V/r//voltage  at C2 arm
//Cs * R = 1 to 10 s
Cs=10/R

printf('The value of Cs is %d microfarad',Cs*10^6)
printf('\nThe value of R is %3.1e ohm',R)
