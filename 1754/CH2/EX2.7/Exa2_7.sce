//Exa 2.7
clc;
clear;
close;
//Given data
deltaVEB=200;//in mVolt
deltaIE=5;//in mA
ri=deltaVEB*10^-3/(deltaIE*10^-3);//in Ohm
disp(ri,"Input resistane of transistor in Ohm :");