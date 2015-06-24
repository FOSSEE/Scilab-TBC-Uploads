//Caption: samplingrate,number of bits,bitrate,bandwidth
//Example 4.4
//page no 169
//find sampling rate,number of bits,bit rate,bandwidht
clc;
clear;
//Given data
emax=0.001;
del=2*emax;;
fm=100;
xmax=10;

q=(2*xmax)/del;
fs=2*fm;
v=(log10(q))/log10(2);
v=ceil(v);
r=v*fs;
disp(fs,"i)sampling Frequncy");
disp("Hz.");
disp(v,"ii)no.of bits in PCM");
disp("bits.");
disp(r,"iii)sampling rate");
disp("bits per second.");
disp(r/2,"iv)Transmission Bandwidth");
disp("Hz.");




