
//Exa:9.6
clc;
clear;
close;
//Given:
Ts=3;//in dB
fs=1/Ts;
printf("\n Ms(f)=p(f)[fs*sigma{M(f-Kfs)}]");
printf("\n 1/(1/30B)*integ(Ae^-j2*pi*f*t)dt from -60dB to 60dB");
printf("\n AsinC(2*pi*f/60B)");