//Caption: signaling rate
//Example 4.14
//page no 187
//Find  signaling rate
clear;
clc;
fs1=8*10^3;
del=31.25*10^-3;
q=64;
v=log2(q);
r=v*fs1;//signaling rate
disp(r*10^-3,"i)Signaling rate of PCM is");
disp("kHz");

fm=3*10^3;
A=1;
fs2=(2*%pi*fm*A)/(del);
disp(fs2*10^-3,"ii)The signaling rate of DM is");;
disp("kHz");
