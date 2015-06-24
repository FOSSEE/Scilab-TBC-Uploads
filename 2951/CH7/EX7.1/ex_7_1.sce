clc;
clear;
N=1;// since ASK
Bin_Sig=15;//Binary signal in kbps

BW=Bin_Sig*10^(3)/N;
Baud=Bin_Sig*10^(3)/N;
disp(BW,"Bw=");
disp(Baud,"Baud=");
