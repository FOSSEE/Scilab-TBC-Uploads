//Caption: Bandwidth,Sampling Rate
//Example 4.5
//page no 170
//Find  Bandwidth,Sampling Rate
clc;
clear;
//Given data
fm=3.4*10^3;
N=24;
r=1.5*10^6;
encoder=8;

BW=N*fm;
disp(BW/10^3,"Channel Bandwith is");
disp("kHz");

r1=r/N;
fs=r1/encoder;

disp(fs,"sampling frequency");
disp("Hz or samples per second.");


