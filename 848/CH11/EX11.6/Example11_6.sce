//clear//
//Caption: Optical Signal-to-noise ratio (OSNR)
//Example11.6
//page 412
clear;
close;
clc;
Q = 6; //Q factor of 6
OSNR = (1/2)*Q*(Q+sqrt(2));
disp(10*log10(OSNR),'Optical Signal-to-noise ratio in dB OSNR =')
//Result
//Optical Signal-to-noise ratio in dB OSNR = 13.471863 
