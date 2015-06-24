clc;clear;
//Example 16.7

//given data
E=4;//applied voltage in MeV
m=3.334*10^-27;//mass of deuteron in kg
R=0.75;//radius in m
pi=3.14;//const
e=1.6*10^-19;//the charge on electron in C

//calcualtions
E=4*10^6*e;
fo=sqrt(E/(2*m))/(pi*R);
disp(fo,'frequnecy of generator in Hz')