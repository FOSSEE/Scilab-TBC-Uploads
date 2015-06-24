

// Example No.1.1.
// Page No.28.
clc;clear;
t = 0.15*10^(-2);//Thickness of the quartz crystal -[m].
Y = 7.9* 10^(10);//Young's modulus of quartz -[N/m^2].
d = 2650;//Density of quartz -[kg/m^3].
f = (1/(2*t))*(sqrt(Y/d));//'f' is fndamental frequency of vibration.
f = f*10^(-6);//fundamental frequency of vibration.
printf("\nThe fundamental frequency of vibration of the crystal is %.4f MHz",f);

