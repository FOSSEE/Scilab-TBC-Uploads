clc;clear;
//Example 9.3

//given data
V=54;//applied voltage in V
e=1.602*10^-19;//the charge on electron in C
m=9.12*10^-31;//mass of electron in kg
h=6.625*10^-34;//Plank's constant

//calcualtions
v=sqrt(2*e*V/m);
disp(v,'velocity of electron in m/s');
W=12.25/sqrt(V);
disp(W,'de broglie wavelength in angstrom');
u=h/(2*m*W*10^-10);
disp(u,'phase velocity in m/s')