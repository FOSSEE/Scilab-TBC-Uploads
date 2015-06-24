//Example 3.8: 
clc;
clear;
close;
//given data :
Beta=40;
Ib=25;// base current in micro-A
Ic=Beta*Ib;
Ie=(Ib+Ic)*10^-3;
format('v',6)
disp(Ie,"Ie,(mA) = ")
