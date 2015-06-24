// Exa 6.13
clc;
clear;
close;
format('v',7)
// Given data
dAvByAv = 20/100;// variation in open loop gain
dAvf_by_Avf = 1/100;// variation in closed loop gain
BetaAv = (dAvByAv/dAvf_by_Avf)-1;// feedback factor
Avf = 100;//unit less
Av = Avf*(1+BetaAv);// open loop voltage gain
disp(Av,"The value of Av is");
Beta = ((Av/Avf)-1)/Av;// unit less
disp(Beta,"The value of ß is");
