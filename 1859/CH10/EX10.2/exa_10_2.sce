// Exa 10.2
clc;
clear;
close;
// Given data
Pm=1250;// in watt
V=255;// in volt
I=4.8;// in amp
P=V*I;/// in watt
AbsoluteError= Pm-P;// in watt
disp(AbsoluteError,"Absolute Error in watt");
PerError= AbsoluteError/Pm*100;// in %
disp(PerError,"Percentage Error")
