// Example 8.17;//ration of SNR
clc;
clear;
close;
fa=1;//
pa=1;//
r=1;//
po=1;//
ac=1;//
ba=1;//
no=1;//
snr1=((3*fa^3*po*(r*po)^2*((ac^2)/2))/(2*ba^3*no));//SNR output FM
snr2=((fa^3*po*(r*po)^2*((ac^2)/2))/(2*ba^3*no));//SNR output FM
rt=snr1/snr2;//
disp(rt,"ratio of output SNR (in dB) in two system is")
