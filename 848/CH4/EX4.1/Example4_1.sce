//clear//
//Caption: Program to find intrinsic carrier concentration
//Example4.1
//page136
clear;
close;
clc;
m = 9.11e-31; //Electron rest mass in kg
me = 0.068*m; //Effective electron mass kg
mh = 0.56*m; //Effective hole mass in kg
Eg = 1.42*1.60218e-19;//band-gap energy in volts
kB = 1.38054e-23;//Boltzma's constant
T = 300; //room temperature in kelvin
h = 6.6256e-34;//Planck's constant
K = 2*((2*%pi*kB*T/(h^2))^1.5)*((me*mh)^0.75);//characteristic constant of material
ni = K*%e^(-Eg/(2*kB*T));
disp(ni,'intrinsic carrier concentration in cubic meter')
//Result
//intrinsic carrier concentration in cube meter  2.551D+12
