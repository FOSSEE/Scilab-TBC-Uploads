//clear//
//Caption:Program to find Relative Intensity Noise (RIN)
//Example9.1
//page 320
clear;
clc;
close;
IB_Ith = [1.3,1.4,1.5,1.6];//ratio between bias current and threshold current
f = 100e06; //frequency = 100MHz
RIN = ((IB_Ith-1)^-3)/f;
RIN_dB = 20*log10(RIN);
disp(RIN_dB,'Relative Intensity Noise(RIN) in dB/Hz RIN_dB =')
//Result
//Relative Intensity Noise(RIN) in dB/Hz RIN_dB =   
//   - 128.62728  - 136.1236  - 141.9382  - 146.68908 
