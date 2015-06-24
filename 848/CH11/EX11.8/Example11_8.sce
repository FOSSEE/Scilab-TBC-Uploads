//clear//
//Caption: OSNR for different ASE noise level
//Example11.8
//page 413
clear;
clc;
close;
P_ASE1 = -22; //ASE level in dBm
P_ASE2 = -16; //ASE level in dBm
Pout = 6; //amplified signal level in dBm
OSNR1 = Pout - P_ASE1; //Optical SNR in dBm
OSNR2 = Pout - P_ASE2; //Optical SNR in dBm
disp(OSNR1,'Optical SNR in dBm OSNR =')
disp(OSNR2,'Optical SNR in dBm OSNR =')
//Result
//Optical SNR in dBm OSNR =  28.  
//Optical SNR in dBm OSNR =  22.  
