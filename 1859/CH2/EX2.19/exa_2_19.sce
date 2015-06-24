// Exa 2.19
clc;
clear;
close;
// Given data
E= 200;// in V
del_E_by_E= 1;
R=1000;// in ohm
del_R_by_R= 5;
P=E^2/R;// in watt
disp(P,"Normal power consumed in watt")
LimError= 2*del_E_by_E+del_R_by_R;// in %
disp(LimError,"Relative limiting error in measurement of power in percentage")
LimError= LimError*P/100;//in watt
disp(LimError,"Limiting error of power in watt")
