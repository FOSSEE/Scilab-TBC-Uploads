//Example 9.17.1 // bandwidth
clc;
clear;
close;
format('v',6)
//given data :
Trs=12;//in micro-sec
Trd=15;//in micro-sec
Tro=sqrt(Trd^2-Trs^2);
K=0.35;// constant
BW=(K/Tro)*10^3;
disp(BW,"bandwidth,BW(KHz) =")
