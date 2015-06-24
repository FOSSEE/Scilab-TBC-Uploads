// Exa 1.10
clc;
clear;
close;
// Given data
format('v',13)
Bo= 1.7*10^-5;// in weber/meter^2
miu_o= 4*%pi*10^-7 ;// in weber/amp-meter
H= Bo/miu_o;//in A/m
disp(H,"The horizontal component of the magnetic intensity in A/m is : ")
