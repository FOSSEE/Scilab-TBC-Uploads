clc;clear;
//Example 13.3
//calculation of momentum of X-ray photon undergoing scattering

//given values

alpha=60*%pi/180;//scattering angle in radian
e=1.6*10^-19;//charge ofelectrone
W=12273;//work function in eV
c=3*10^8;//velocity of light in m/s
h=6.626*10^-34;//Planck's constant in Js
hc=12400;//in eV
m=9.1*10^-31//restmass of photon in kg
//calculation
x=hc/(W);//wavelength of photon undergoing modofied scattering in armstrong
y=x-(h/(m*c))*(1-cos(alpha));
p=h/y*10^10;
disp(p,'momentum of photon(in kg-m/s) is');