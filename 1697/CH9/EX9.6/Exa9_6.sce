//Exa 9.6
clc;
clear;
close;
//given data :
f_MHz=3000;//in MHz
d_Km=384000;//in Km
PathLoss=32.45+20*log10(f_MHz)+20*log10(d_Km);//in dB
disp(PathLoss,"Path loss in dB : ");