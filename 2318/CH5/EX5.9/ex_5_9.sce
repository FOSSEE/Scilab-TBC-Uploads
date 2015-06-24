//Example 5.9 // Magnetic pole difference
clc;
clear;
close;
//given data :
format('v',4)
N=150;// turns
I=1.2;// in A
theta=300;// divisions
t=155;//change in mmf in division
mmf=N*I;
r=2*mmf;// du to reversal
K=360/t;
M=(K*theta);
disp(M,"The magnetic potential difference between two points,(AT) = ")
