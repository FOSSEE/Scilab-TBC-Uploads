//Caption:Find starting current in terms of full load current
//Exa:12.5
clc;
clear;
close;
s=0.04//Slip
a=1//Starting torque T_st/Full load torque(T_fl) are equal
I_s=sqrt(a/s)
disp(I_s,'Starting current is (below)times the full load current=' ) 