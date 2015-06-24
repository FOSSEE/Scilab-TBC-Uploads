//Find Loss at 40 Hz
//Ex:14.4
clc;
clear;
close;
w_h1=300;
b_1=0.9;
y=b_1^1.7;
b_2=1.1;
x=b_2^1.7;
f1=50;
f2=40;
w_h2=(w_h1*x*f2)/(y*f1);
w_h22=w_h2*1.22;//in W
disp(w_h22,"Loss at 40 Hz (in W) = ");