//Example 6_13
clc;
clear;
close;
format('v',6);
//given data : 
Vdc=30;//V
rf=25;//ohm
RL=500;//ohm
Idc=Vdc/RL;//A
Im=%pi*Idc;//A
Vi_max=Im^2*(rf+RL);//V
disp(Vi_max,"Voltage required at input(V) : ");
//Answer in the textbook is not accurate.
