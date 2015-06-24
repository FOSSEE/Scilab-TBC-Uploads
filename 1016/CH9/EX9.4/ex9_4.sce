clc;clear;
//Example 9.4

//given data
e=1.6*10^-19;//the charge on electron in C
m=9.12*10^-31;//mass of electron in kg
c=3*10^8;//speed of light in m/s
h=6.625*10^-34;//Plank's constant

//calculations
E=m*c^2;
mp=1836*m;
//(0.5*m*v^2)=E
mv=sqrt(E*2*mp);
W=h/mv;
disp((W/10^-10),'de broglie wavelength in Angstrom')