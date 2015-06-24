// Exa 1.28
clc;
clear;
close;
// Given data
Ao= 10^4;// in V/V
f_t= 10^6;// in Hz
R2byR1= 20;
omega_t= 2*%pi*f_t;
omega_3dB= omega_t/(1+R2byR1);
f3dB= omega_3dB/(2*%pi);// in Hz
disp(f3dB*10^-3,"3-dB frequency of the closed loop amplifier in kHz is : ")
f3dB= 0.1*f3dB;// in Hz
voBYvi= -R2byR1/sqrt(1+(2*%pi*f3dB/omega_3dB)^2);
voBYvi= abs(voBYvi);// in v/v
disp(voBYvi,"Gain in v/v is : ")



