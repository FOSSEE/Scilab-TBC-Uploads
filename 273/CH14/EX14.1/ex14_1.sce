clc;clear;
//Example 14.1
//calculation of intensity of laser beam

//given values
P=10*10^-3;//Power in Watt
d=1.3*10^-3;//diametre in m
A=%pi*d^2/4;//area in m^2


//calculation
I=P/A;
disp(I,'intensity (in W/m^2) is');