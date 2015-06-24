//Exa 4.11
clc;
clear;
close;
//Given data :
r=20;//mm
rdash=0.7788*r;//mm
d=7*1000;//mm
L=10^-7*log(sqrt(3)/2*d/rdash);//H/m
disp(L*10^3/10^-3,"Spacing between adjacent conductors(mH)");
