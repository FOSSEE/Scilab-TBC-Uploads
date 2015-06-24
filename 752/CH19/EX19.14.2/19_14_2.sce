clc;
//page no 739
//problem no 19.14.2
f=14*10^9;BO_dB=10;GTR_dB_SAT=3;RFL_dB=1;phi_dB=-98;c=3*10^8;
//Determination of carrier to noise ratio
wav=c/f;
Ao_dB=10*log10((wav^2)/(4*(%pi)*1));
CNo_dB=phi_dB-BO_dB+GTR_dB_SAT-RFL_dB+Ao_dB+228.6;
disp(CNo_dB,'The carrier to noise ratio is');