//Example 9.17.5 // rise time
clc;
clear;
close;
//given data :
Trs=12;//in micro-sec
Trd=30;//in micro-sec
BW=20*10^6;// in Hz
K=0.35;// constant
Tro=(K/BW)*10^9;
Trs=sqrt(Trd^2-Tro^2);
disp(Trs,"actual rise time,Trs(n-sec) = ")
