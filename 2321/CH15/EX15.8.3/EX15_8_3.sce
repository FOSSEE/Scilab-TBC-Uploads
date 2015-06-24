//Example No. 15.8.3
clc;
clear;
close;
format('v',7);
Eta=0.5;//(refractive index)
N=400;//electron/cm^3(Electron density)
f=sqrt(81*N/(1-Eta^2));//kHz(frequency)
disp(f,"Frequency in kHz : ");
