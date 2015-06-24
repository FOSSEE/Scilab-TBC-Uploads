//Exam:6.3
clc;
clear;
close;
h=6.625*(10^(-34));//Planck's constant(in m2*kg/s)
c=3*10^8;//speed of light (in m/s)
e=1.602*10^-19;//electron charge(in coulomb)
wavelength=6800*10^-10;//wavelength of radiation
v_o=c/wavelength;//frequency
W=h*v_o;//Work function
disp(v_o,'threshold frequency(in Hz)=')
disp(W,'work function of metal(in joule)=')