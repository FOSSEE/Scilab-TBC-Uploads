//Example 3.3: 
clc;
clear;
close;
format('v',5)
//given data :
alfa=0.88;
Ie=1;// in mA
Ic=alfa*Ie;// in mA
I_B=Ie-Ic;
disp(I_B,"Base current,(mA) = ")
