clc
//initialization of variables
clear
r_min=1.17 //cm
A=17.21 //cm^2
Q=1/2
h=3.5 //m
E=2*10^6 //kg/cm^2
h=h*100
// calculations
Q1=(Q*h/r_min)^2
s_cr=E*%pi^2/Q1
P_cr=s_cr*A
// results
printf('The crippling load is %d kg',P_cr)

// wrong calculations given in the text
