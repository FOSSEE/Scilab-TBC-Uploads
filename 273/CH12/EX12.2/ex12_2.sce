clc;clear;
//Example 12.2
//calculation of natural frequency

//given values

t=5.5*10^-3;//thickness in m
d=2.65*10^3;//density in kg/m^3
Y=8*10^10;//Young's modulus in N/m^2 


//calculation
f=(sqrt(Y/d))/(2*t);//frequency in hertz
disp(f*10^-3,'the natural frequency(in kHz) is');
