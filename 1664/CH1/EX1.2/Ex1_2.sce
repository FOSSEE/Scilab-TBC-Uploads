

// Example No.1.2.
// Page No. 28.
clc;clear;
t = 1*10^(-3);//Thickness of the quartz crystal -[m].
Y = 7.9* 10^(10);//Young's modulus of quartz -[N/m^2].
d = 2650;//Density of quartz -[kg/m^3].
p = 1;
f1 = (p/(2*t))*(sqroot(Y/d));//For fundamental frequency  p=1.
printf("\nThe fundamental frequency of vibration of the crystal is %3.3e Hz",f1);
p = 2;
f2 = (p/(2*t))*(sqroot(Y/d));// f2 is frequency of first overtone and for the first overtone P=2.
printf("\nThe frequency of the first overtone of the crystal is %3.3e Hz",f2);
