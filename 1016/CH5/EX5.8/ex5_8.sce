clc;clear;
//Example 5.8

//given values
W=5200*10^-10;//wavelength in m
h=6.625*10^-34;//Plank's constant
m=9.12*10^-31;//mass of electron in kg

//calculations
p=h/W;
v=p/m;
disp(v,'the velocity in m/s')