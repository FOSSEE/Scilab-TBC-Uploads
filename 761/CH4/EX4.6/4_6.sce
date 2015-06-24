clc;
//page no 145
//prob no. 4.6
//Phase modulator with sensitivity kp=3rad/V & sine wave i/p 2 V peak at 1kHz
kp=3;Vp=2;f=1*10^3;
//As max value of sine functn is 1, hence max value of phi is kp*Vp
phi_max=kp*Vp;
//phi_max is nothing but mp
mp=phi_max;
//value of mf is same as mp if signal is considered as freq modulation
//Determination of freq deviation
dev=mp*f;
disp('kHz',dev/1000,'The freq deviation produce is');