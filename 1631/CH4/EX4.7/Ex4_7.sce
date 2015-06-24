//Caption: bitspersample,Transmissionrate
//Example 4.7
//page no 171
//find i)bits per sample,ii)transmission rate
clc;
clear;
//Given data
fm=3*10^3;
q=16;

v=(log10(q))/log10(2);
disp(v,"bits in code word");
disp("bits");
fs=2*fm;
r=v*fs;
disp(r,"bit trasmission rate");
disp("bits per second")
