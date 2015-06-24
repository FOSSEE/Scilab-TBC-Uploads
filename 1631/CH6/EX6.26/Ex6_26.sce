//Caption: Transmission bandwidth
//Example 6.26
//page no 307
//Find The Transmission bandwidth
clc;
clear;
q=128;
alpha=0.2
n=log2(q);
fm=2000;
Nq=2*fm;
fs=1.25*Nq;
N=8;
total=N*fs;
bitrate=7*total;
fB=((1+alpha)*bitrate)/2;
disp("kHz",fB/1000,"Transmission Bandwidth");
