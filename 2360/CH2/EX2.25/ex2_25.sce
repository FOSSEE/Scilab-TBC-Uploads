// Exa 2.25
format('v',7);clc;clear;close;
// Given data
Wrange= 500;//wattmeter range in W
del_A= 1.5*Wrange/100;//limiting error at full scale in W
P= 50;//power in W
Pmin= P-del_A;// minimum power in W
Pmax= P+del_A;// maximum power in W
disp("The range of the reading is : "+string(Pmin)+" watts to "+string(Pmax)+" watts");
