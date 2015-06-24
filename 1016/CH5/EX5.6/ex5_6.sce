clc;clear;
//Example 5.6

//given values
W=4500*10^-10;//wavelength in m
V=150;//rated voltage in W
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s

//calculation
P=V*8/100;//lamp power emitted
E=h*c/W;
n=P/E;
disp(n,'No. photons emitted/s')