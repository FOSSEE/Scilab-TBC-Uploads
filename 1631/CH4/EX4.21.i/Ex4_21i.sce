//Caption:Quantizing  levels, bits per sample
//Example 4_21.i
//page no 197
//Find  Quantizing  levels,minimum number of bits per sample
clear;
clc;
SNRO=30;//dB
fmin=300;
fmax=3300;
fs=80000;
//SNRO=1.76+20log10(q)
q=10^((SNRO-1.76)/20);
q=ceil(q);
v=log2(q);
disp(q,"Quantizing  levels required is");
disp(ceil(v),"minimum number of bits per sample are");

