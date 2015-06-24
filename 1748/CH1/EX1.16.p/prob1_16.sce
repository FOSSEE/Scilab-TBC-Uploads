// Prob 1.16
clc;
clear;
close;
format('v',7);
// Given data :
EP=6000;//in volt
Em=EP;//in Volt
Xs=1.5;//in ohm/phase
IL=1000;//in Ampere
VT=Em-IL*Xs;//in volt
disp(VT,"Terminal voltage in volt : ");
VL=sqrt(3)*VT;//in volt
sinfi=1;
Preactive=sqrt(3)*VL*IL*sinfi;//in VAR
disp(Preactive/10^6,"Reactive Power(MVAR) : ");
