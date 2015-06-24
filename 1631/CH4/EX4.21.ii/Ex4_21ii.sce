//Caption: Bandwidth
//Example 4.21.i
//page no 197
//Find  minimum required bandwidth
clear;
clc;
SNRO=30;//dB
fmin=300;
fmax=3300;
fs=8000;
v=5;
fPCM=(v*fs)/2;
disp(fPCM/1000,"minimum required bandwidth");
disp("kHz");
