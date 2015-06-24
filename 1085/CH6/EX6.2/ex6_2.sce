//Exam:6.2
clc;
clear;
close;
h=6.625*(10^(-34));//Planck's constant(in m2*kg/s)
c=3*10^8;//speed of light (in m/s)
e=1.602*10^-19;//electron charge(in coulomb)
W=2.3;//work (in eV)
W_1=W*e;//work (in joules)
v_o=W_1/h;//threshold frequency(in Hz)
Wavelength=(h*c/W_1)/10^(-10);//Wavelength in Angstrom
disp(v_o,'threshold frequency(Hz)=');
disp(Wavelength,'Wavelength (in Angstrom)=');