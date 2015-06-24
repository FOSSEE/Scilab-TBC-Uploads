clc;clear;
//Example 9.5

//given data
e=1.6*10^-19;//the charge on electron in C
m=1.676*10^-27;//mass of neutron in kg
c=3*10^8;//speed of light in m/s
h=6.625*10^-34;//Plank's constant

//calculations
E=1;//in eV
E=1*e;//in V
mv=sqrt(2*E*m);
W=h/mv;
disp((W/10^-10),'de broglie wavelength in Angstrom')