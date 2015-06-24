//Example 6.7
//Wilkinson Method
//Page no. 240
clc;clear;close;

A=[0.3*10^5,0.212,0.332;0.216,0.376,0.477;0.173,0.663,0.626];
B=[0.235;0.128;0.285];
X=inv(A)
disp(X*B,'Final Solution = ')