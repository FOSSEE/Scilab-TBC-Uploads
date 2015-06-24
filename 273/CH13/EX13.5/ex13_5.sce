clc;clear;
//Example 13.5
//calculation of wavelength of light emitted

//given values
e=1.6*10^-19;//charge of electrone
c=3*10^8;//velocity of light
h=6.626*10^-34;//Planck's constant in Js
E1=5.36;//energy of first state in eV
E2=3.45;//energy of second state in eV


//1)calculation

l=h*c*10^10/((E1-E2)*e);
disp(l,'wavelength of scattered light(in Armstrong)is');
