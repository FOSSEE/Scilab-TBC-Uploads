//Example 15.34
//find bandwidth of the transfer function
clear;clc;
xdel(winsid());

s=%s
A=1
B=(s+1)
tf=A/B

disp("when A/B(jw)=1/sqrt(2), w=w1")

w1=(1/0.707)^2-1
//w1=bandwidth of the transfer function

disp("Hence the bandwidth is 1 rad/sec")
