// Exa 7.10
clc;
clear;
close;
format('v',6)
// Given data
C = 0.04;// in pF
Cdesh = 2;// in pF
Per1 = (1/2)*(C/Cdesh)*100;// in %
Per2 = (sqrt(1+C/Cdesh)-1)*100;// in %
disp("Parallel resonant frequency is greater than series resonant frequency by "+string(Per2)+" %");
