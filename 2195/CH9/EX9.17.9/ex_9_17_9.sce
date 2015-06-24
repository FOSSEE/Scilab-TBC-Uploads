//Example 9.17.9 // rise time
clc;
clear;
close;
//given data :
format('v',4)
Trs=21;//in micro-sec
K=0.35;// constant
BW=50*10^6;// in Hz
Tro=(K/BW)*10^9;
Trd=sqrt(Trs^2+Tro^2);
disp(Trd,"rise time,Tro(n-sec) = ")
