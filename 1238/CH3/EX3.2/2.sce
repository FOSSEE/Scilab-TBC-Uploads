//finding minimum amplification//
//example 2//
clc
//clears the command window//
clear
//clears// 
r=.04*10^-6
//r is the rise time//
disp('rise time=(2*v)/(2*%pi*f*V),hence')
//f=frequency in hetrz;v=output voltage in volts;V=required maximum output voltage in volts//
f=400*10^3
v=6.28
V=(2*v)/(r*2*%pi*f)
Vin=12.5;//input voltage//
a=V/Vin
printf('minimum amplification required=%f ',a)
