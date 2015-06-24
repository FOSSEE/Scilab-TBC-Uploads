//Example 1_6
clc;
clear;close;

//Given data
Vdc=100;//V
R=10;//ohm
L=5;//H
i=50*10^-3;//A

//Solution :
//i=Vdc/R*(1-exp(-R*t/L))
t=-log(1-i/Vdc*R)/R*L;//s
disp("Minimum width of gate pulse is "+string(t*1000)+" milli-seconds.");
