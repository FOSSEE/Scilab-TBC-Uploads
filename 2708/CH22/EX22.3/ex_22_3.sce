//Example 22.3 // critical current density
clc;
clear;
//given data :
d=1D-3;//diameter of wire in m
Ho=6.5D4;//critical field at temperature at 0k
Tc=7.18;// critical temperature in kelvin
T=4.2;//temperature in kelvin
Hc=Ho*(1-(T/Tc)^2);//critical field at T kelvin
Jc=4*Hc/d;//formula
disp(Jc,"critical current density in A/m2")
