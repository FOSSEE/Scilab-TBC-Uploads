//Example 3.7: 
clc;
clear;
close;
//given data :
alfa=0.9;// constant
Beta=alfa/(1-alfa);
Del_Ib=4;// in mA
Del_Ic=Beta*Del_Ib;
format('v',4)
disp(Del_Ic,"the change in the collector current,(mA) = ")
