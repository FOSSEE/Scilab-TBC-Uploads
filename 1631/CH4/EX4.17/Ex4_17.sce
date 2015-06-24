//Caption: sampling rate,quantizing level
//Example 4.17
//page no 194
//Find  sampling rate,quantizing level
clear;
clc;
r=36000;
fm=3.2*10^3;
fs=2*fm;//Nquest rate

v=r/fs;  //r=v*fs signaling rate
v=floor(v);
q=2^v;
fs1=r/v;
disp(q,"quantizing level q=");
disp(fs1/1000,"sampling rate fs=");
disp("kHz");
disp(v,"Number of binary digits =")
