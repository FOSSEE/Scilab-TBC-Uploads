
//Caption: entropy ,information rate
//Example 9.18
//page no 405
//determine entropy ,information rate
clc;
clear;
px1=1/4;
px2=1/5;
px3=1/5;
px4=1/10;
px5=1/10;
px6=1/20;
px7=1/20;
px8=1/20;
f=10*10^3;
fs=10*2*10^3;
HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3)+px4*log2(1/px4)+px5*log2(1/px5)+px6*log2(1/px6)+px7*log2(1/px7)+px8*log2(1/px8);//entropy
disp("bits/message",HX,"H(X) = ");
r=fs;
R=r*HX;//information rate
disp("bits/sec",R,"R = ");
