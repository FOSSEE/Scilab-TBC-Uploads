// Exa 2.14
clc;
clear;
close;
// Given data
FullScaleReading= 200;// in V
N= 100;// Number of division of scale
SD= FullScaleReading/N;// 1 scale division
Resolution = 1/5*SD;// in v
disp(Resolution,"Resolution in volt")
