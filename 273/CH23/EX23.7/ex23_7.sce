clc;clear;
//Example 23.7
//calculation of frequency

//given values
t=5.5*10^-3;//thickness of plate in m
Y=8*10^10;//Young's modulus in N/m^2
d=2.65*10^3;//density in kg/m^3



//calculation
f=sqrt(Y/d)/(2*t);//in Hz
disp(f/10^3,'frequency of fundamental note(in KHz) is');
