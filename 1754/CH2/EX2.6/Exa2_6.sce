//Exa 2.6
clc;
clear;
close;
//Given data
deltaVBE=200;//in mVolt
deltaIB=100;//in uA
ri=deltaVBE*10^-3/(deltaIB*10^-6);//in Ohm
disp(ri/1000,"Input resistane of transistor in kohm :");