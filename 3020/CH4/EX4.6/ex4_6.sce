clc;
clear all;
V = 1500; // Volume of the hall in cubic meters
A1 = 80; // Absorption of the sound by the hall in sabine
rt = (0.163*V)/(A1);//The reverberation time of the hall
disp('s',rt,'The reverberation time of the hall is')
