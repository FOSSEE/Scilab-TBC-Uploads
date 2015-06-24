//Find Band gap energy
//Ex:15.16
clc;
clear;
close;
c=2.99*10^8;//speed of light in m/s
h=6.62*10^-24;//planck's constant
w=1.771*10^-6;//wavelength in J
eg=h*c/w;//in J
disp(eg,"Band gap energy (in J) = ");