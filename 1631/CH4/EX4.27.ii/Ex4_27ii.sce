//Caption: Bit transmission rate
//Example 4.27.ii
//page no 200
//Find bit transmission rate
clear;
clc;
fm=3*10^3;
v=8;
VH=5;
VL=-5;
q=2^v;

fs=2*fm; //Nyquist rate
r=8*fs;
disp("K bits/s",r/1000,"bit transmission rate");
 
