//Caption:Calculate the phase shift of the component
//Exa:6.13
clc;
clear;
close;
w_l=7.2;//wavelength (in cm)
x=10.5-9.3;
Phase_shift=(2*%pi*x)/(w_l);
disp(Phase_shift*180/%pi,'Phase Shift (in degree) =');