//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.8
//calculation of the value of the acceleration due to gravity

//given data
t=36//time(in s) taken
n=20//number of oscillations
l=80*10^-2//effective length(in m)

//calculation
T=t/n//time period
g=(4*%pi^2*l)/(T^2)//formula of time period..........T=2*%pi*sqrt(l*g^-1)

printf('the value of the acceleration due to gravity is %3.2f m/s^2',g)
