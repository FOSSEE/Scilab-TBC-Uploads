clc
//initialzation of variables
clear
h=3.5 //m
A=22.4 //cm^2
r=7.08 //cm
E=2*10^6 //kg/cm^2
Q=1/2
// calculations
h=h*100
Q1=(Q*h/r)^2
s_cr=E*%pi^2/Q1
// results
printf('The critical stress is %d kg/cm^2',s_cr)
printf('\n This is much higher than yield stress for the material, \n so the column will fail by yielding')

// rounding off errors in the text
