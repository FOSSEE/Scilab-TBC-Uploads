//Example 15.7
//find bandwidth of the transfer function
clear;clc;
xdel(winsid());

s=%s;
O=1;
R=(s+1);
tf=O/R
disp("when O/R(jw)=0.707, w=wc")

wc=(1/0.707)^2-1
//wc=bandwidth of the transfer function

disp("Hence the bandwidth is 1 rad/sec")
