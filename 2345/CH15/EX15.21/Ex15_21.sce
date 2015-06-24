//Finding loss
//Example 15.21(pg. 407)
clc
clear
A=30//area of hysteresis material in cm^2
s1=0.4//scale is 1cm=0.4Wb/m^2
s2=400// and 1cm=400AT/m
V=1.2*(10^-3)
f=50//frequency in Hz
H=A*s1*s2//hysteresis loss/m^3/cycle in joules
Hp=H*V*f//hysteresis power loss in Watts
printf('Thus hysteresis power loss is %3.2f Watts',Hp)
