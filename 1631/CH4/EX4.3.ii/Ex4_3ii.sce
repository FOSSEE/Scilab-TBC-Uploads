//Caption: Transmission Bandwith
//Example 4.3.ii
//page no 168
//Find  Transmission Bandwith
clc;
clear;
//Given data
fm=4*10^3;//Bandwidth of PCM
xmax=3.8;
snr=100;// Signal to Noise Ratio
outputs=30;
v=7;
bw=outputs*v*fm;
r=bw*2;
disp(bw/10^3,"Transmission Bandwith");
disp("kHz");
disp("bits/sec",r/1000,"Signaling rate")
