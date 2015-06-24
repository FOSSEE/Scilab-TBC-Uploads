clc
clear
//Input data
r1=0.001//Initial radius in m
r2=0.004//Final radius in m
t=2*10^-3//Time in s
s=(7*10^-2)//Surface tension of water in N/m

//Calculations
P=((2*s)*((1/r2)-(1/r1)))/(t*10^4)//Rate of change of pressure in N/m^2.s*10^4

//Output
printf('Rate of change of pressure is %3.2f*10^4 N/m^2.s',P)
