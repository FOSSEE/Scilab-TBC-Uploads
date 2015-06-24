clc;clear;
//Example 3.8

//given data
h=6.625*10^-34;//Plank's constant
c=3*10^8;//speed of light in m/s
E1=10.2;//in eV energy
E2=12.09;//in eV energy
e=1.6*10^-19;//the charge on electron in C

//calcualtion
//principal quantum no are 2 & 3 respectively
W=c*h/(E1*e)*10^10;
disp(W,'wavelength in angstrom is for 10.2 eV');
W=c*h/(E2*e)*10^10;
disp(W,'wavelength in angstrom is for 12.09 eV')