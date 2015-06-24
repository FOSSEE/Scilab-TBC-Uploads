//Caption: Quantizing levels,bits per sample,Bandwidth
//Example 4.21.iii
//page no 197
//Find  Quantizing  levels,minimum number of bits per sample and bandwidth
clear;
clc;
SNRO=30;//dB
fmin=300;
fmax=3300;
fs=8000;

q=10^((SNRO+10.1)/20);
q=ceil(q);
v=log2(q);
v=ceil(v);
disp(q,"Quantizing  levels need is");
disp(v,"minimum number of bits per sample is");


fPCM=(v*fs)/2;
disp(fPCM/1000,"minimum required bandwidth");
disp("kHz");
