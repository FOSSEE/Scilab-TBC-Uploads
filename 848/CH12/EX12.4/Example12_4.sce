//clear//
//Caption:Full-width Half-Maximum(FWHM) soliton pulse normalized time
//Example12.4
//page 446
clear;
clc;
close;
Ts = [15e-12,50e-12]; //FWHM soliton pulse width
To = Ts/1.7627;
disp(To*1e12,'Normalized time for FWHM soliton pulse in pico seconds To =')
//Result
//Normalized time for FWHM soliton pulse in pico seconds To = [8.5096727  28.365576] 
