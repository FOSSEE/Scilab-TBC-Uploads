//Example 1_8
clc;
clear;close;

//Given data
i_h=50*10^-3;//A
t=50*10^-6;//s
Vdc=100;//V
R=20;//ohm
L=0.5;//H

//Solution :
i=Vdc/R*(1-exp(-R*t/L));//A
//i<i_h;;;so thyristor will return to off state
iR=i_h-i;//A//current through R
R=Vdc/iR;//ohm
disp("Maximum value of R is "+string(R)+" ohm.");
