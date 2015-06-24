clc;clear;
//Example 5.3

//given values
P=200;//power in W
W=6123*10^-10;//wavelength in m
c=3*10^8;//speed of light in m/s
h=6.625*10^-34;//Plank's constant

//calculation
Op=0.5*P;//radiant o/p
E=h*c/W;
n=2/E;
disp(n,'No. of Quanta emitted/s')