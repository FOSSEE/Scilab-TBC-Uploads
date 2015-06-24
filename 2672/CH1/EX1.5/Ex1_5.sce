//Example 1_5
clc;
clear;
close;
format('v',6);
//given data : 
//Point B & C are shorted
RAB=(4*4/(4+4));//ohm
RBD=(4*4/(4+4));//ohm
Req=RAB+RBD;//ohm
disp(Req,"Equivalent Resistance(ohm)");
