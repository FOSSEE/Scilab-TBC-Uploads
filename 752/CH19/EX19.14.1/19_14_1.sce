clc;
//page no 737
//problem no 19.14.1
//A high power amplr 
P_HPA=600;TFL_dB=1.5;G_dB_ES=50;RFL_dB=1;GTR_dB_SAT=-8;FSL_dB=200;AML_dB=0.5;PL_dB=0.5;AA_dB=1;
//Determination of carrier to noise ratio
P_dB_HPA=10*log10(P_HPA/1);
EIRP_dB=P_dB_HPA-TFL_dB+G_dB_ES;
TPL_dB=FSL_dB+AML_dB+PL_dB+AA_dB;
CNoR_dB=EIRP_dB-TPL_dB-RFL_dB+GTR_dB_SAT+228.6;
disp(CNoR_dB,'The carrier to noise ratio in dB is');