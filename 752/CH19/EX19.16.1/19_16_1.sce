clc;
//page no 
//problem no 19.16.1
//Determination of overall C/N
CNo_dB_U=88;CNo_dB_D=78;
NoC_U=10^(-CNo_dB_U/10);
NoC_D=10^(-CNo_dB_D/10);
NoC=NoC_U+NoC_D;
CNo_dB=10*log10(1/NoC);
disp(CNo_dB,'The overall carrier to noise ratio is');