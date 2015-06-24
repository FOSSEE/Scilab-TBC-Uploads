//Caption: SNR,bitrate,no.of bits recorded
//Example 4.28
//page no 201
//Find  i)SNR  ii)output bit rate iii)no.of bits recorded
clear;
clc;
N=16;
v=16;
fs=44.1*10^3;
SNR=1.76+6*N;
disp("dB",SNR,"i)Out put signal noise ratio");
bitrate=2*v*fs;
outputbitrate=2*bitrate;//including addtional 100% over head
disp("Mbits/sec",outputbitrate*10^-6,"ii)output bit rate");
CD=outputbitrate*3600;
disp("gigabits",CD*10^-9,"iii)no.of bits recorded in CD");
 
