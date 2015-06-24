clc;clear;
//Example 16.2

//given data
B=0.7;//magnetic flux intensity in Wb/m^2
m=3.34*10^-27;//mass in Kg
e=1.6*10^-19;//the charge on electron in C
pi=3.14;//const

//calculations
Q=e;
fo=B*Q/(2*pi*m*10^6);
disp(fo,'The cyclotron frquency in MHz ')