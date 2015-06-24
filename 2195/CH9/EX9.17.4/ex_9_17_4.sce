//Example 9.17.3 // rise time
clc;
clear;
close;
//given data :
Tro=10;//in micro-sec
Trd=15;//in micro-sec
Trs=sqrt(Trd^2-Tro^2);
disp(Trs,"actual rise time,Trs(n-sec) = ")
