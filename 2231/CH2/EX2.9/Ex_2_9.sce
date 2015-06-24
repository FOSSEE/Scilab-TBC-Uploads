//Example 2_9
clc;
clear;close;

//Given data: 
V=230;//V
f=50;//Hz
R=5;//ohm
L=8*10^-3;//H
E=50;//V
alfa=40;//degree

//Solution :
//Vdc=2*sqrt(2)*V*cosd(alfa)/%pi=E+Io*R
Io=(2*sqrt(2)*V*cosd(alfa)/%pi-E)/R;//A
disp(Io,"Average value of load current in A");
