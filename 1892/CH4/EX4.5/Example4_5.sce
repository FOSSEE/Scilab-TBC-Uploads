// Example 4.5

clear; clc; close;
format('v',7);

// Given data
Vs=120;//in volt
V=60;//in volt
Ra=2.5;//in Ω
T=0.5; //  in N-m
N=6000//in rpm

//Calculations

omega_mo=2*%pi*N/60//in radian/sec
ke=Vs/omega_mo;//in Nm/A
Ia=T/ke;//in Ampere
E=V-Ia*Ra;//in Volt
omega_m=E/ke//in radian/sec
N=omega_m/(2*%pi/60);//in rpm
disp(N,"Speed in rpm = ");
//Note : answer is wrong in the book because calculation is not accurate. .
