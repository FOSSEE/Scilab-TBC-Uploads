// Exa 6.14
clc;
clear;
close;
format('v',6)
// Given data
Av =10000;// open loop gain
Beta = 1/10;// feedback ratio 
Avf = Av/(1+(Av*Beta));// closed loop gain
dAvByAv = 50/100;// change in open loop gain
dAvByAvf = 1/(1+(Beta*Av))*dAvByAv*100;// change in closed loop gain in %
disp(dAvByAvf,"The percentage change in closed loop gain in % is");
