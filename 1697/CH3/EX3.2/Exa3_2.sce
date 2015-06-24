//Exa 3.2
clc;
clear;
close;
//given data :
W=25;//in KW
W=W*10^3;//in W
r=3;//in Km
r=r*10^3;//in m
Erms=sqrt(90*W)/r;//in V/m
disp(Erms,"Field strength at reciever in V/m :");