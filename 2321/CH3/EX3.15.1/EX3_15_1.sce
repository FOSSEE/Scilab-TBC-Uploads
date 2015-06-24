//Example No. 3.15.1
clc;
clear;
close;
format('v',4);

cos_si_p=1/sqrt(2);
PLF=cos_si_p^2;//Polarization Loss factor
PLFdB=10*log10(PLF);//dB
disp(PLFdB,"Power loss factor in dB : ");
