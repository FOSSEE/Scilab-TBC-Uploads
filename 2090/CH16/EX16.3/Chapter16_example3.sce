clc
clear
//Input data
d=0.09;//The diameter of the bore in m
L=0.1;//The length of the stroke in m
T=120;//The torque measured in Nm
pi=3.141;//Mathematical constant of pi
n=4;//Number of cylinders 

//Calculations 
pmb=[(4*pi*T)/(L*(pi/4)*d^2*n)]/10^5;//The brake mean effective pressure in bar 

//Output 
printf('The brake mean effective pressure = %3.2f bar',pmb)
