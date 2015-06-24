clear;
clc;
f=3000;
t_qmin=30*10^-6;
f_r=f/(1-2*t_qmin*f);
R=.06;
L=20*10^-6;
C=1/(L*((2*%pi*f_r)^2+(R/(2*L))^2));    printf("required capacitor size=%.4f F",C*10^6);
//Answers have small variations from that in the book due to difference in the rounding off of digits.