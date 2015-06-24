//Exa 9.4
clc;
clear;
close;
//given data :
HT=100;//in meter
d=60;//in Km
//Formula :  d=4.12*(sqrt(HT)+sqrt(HR));//in Km
HR=(d/4.12-sqrt(HT))^2;//in meter
disp(HR,"Height of receiving antenna in meter : ");