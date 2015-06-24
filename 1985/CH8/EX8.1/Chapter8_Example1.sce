clc
clear
t=(1*10^-3)//Thickness of the crystal in m
d=2650//Density of quartz in kg/m^3
Y=(7.9*10^10)//Youngs modulus of quartz in N/m^2

//Calculations
f=((1/(2*t))*sqrt(Y/d))/10^6//Fundamental frequency of the quartz crystal in Hz *10^6

//Output
printf('Fundamental frequency of the quartz crystal is %3.3f *10^6 Hz',f)
