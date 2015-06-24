//Exam:6.5
clc;
clear;
close;
h=6.6*(10^(-34));//Planck's constant(in m2*kg/s)
c=3*10^8;//speed of light (in m/s)
e=1.6*10^-19;//electron charge(in coulomb)
W=2.24;//work function(in eV)
W_1=W*e;//work function(in joule)
v=(W_1/h)*10^-10;//frequency
wavelength=c/v;//region of electrons spectrum is less than(in angstrom)
disp(wavelength,'region of electrons spectrum is less than(in angstrom)')