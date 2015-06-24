clc;
//page no 249
//prob no. 6.8
//A PLL FM detector with kf=100kHz/V & dev=75kHz
kf=100*10^3;dev=75*10^3;
//Determination of RMS voltage
Vp_op=dev/kf;
//Converting peak voltage in RMS voltage
V_RMS=Vp_op/sqrt(2);
disp('V',V_RMS,'The RMS voltage is');