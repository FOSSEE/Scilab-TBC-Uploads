//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 379
clear;
clc;

//Given

RL=180;//load resistance in ohms
Vc=90;//peak voltage of carrier wave in volts
m=0.5;//modulation index of AM wave

//Solution

Pc=Vc^2/(2*RL);//unmodulated carrier power in watts
Pt=Pc*(1+m^2/2);//total power developed by AM wave in watts
Pcs=Pc*m^2/2;//power in sideband in watts
printf("Total power developed by AM wave Pt = %.4f Watts\n ",Pt);
printf("Power in sideband Pc = %.4f Watts",Pcs);
