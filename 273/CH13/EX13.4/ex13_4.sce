clc;clear;
//Example 13.4
//calculation of wavelength of scattered radiation and velocity of recoiled electron

//given values

alpha=30*%pi/180;//scattering angle in radian
e=1.6*10^-19;//charge ofelectron
x=1.372*10^-10;//wavelength of incident radiation in m
c=3*10^8;//velocity of light in m/s
h=6.626*10^-34;//Planck's constant in Js
m=9.1*10^-31//rest mass of photon in kg
hc=12400;//in eV
//calculation

y=((x+(h/(m*c))*(1-cos(alpha))))*10^10;
disp(y,'wavelength of scattered radiation(in armstrong)is');
x1=x*10^10;//converting incident wavelength into armstrong
KE=hc*e*((1/x1)-(1/y));//kinetic energy in Joule
disp(KE,'kinetic energy in joule is ');
v=sqrt(2*KE/m);
disp(v,'velocity of recoiled electron (in m/s^2)is');
