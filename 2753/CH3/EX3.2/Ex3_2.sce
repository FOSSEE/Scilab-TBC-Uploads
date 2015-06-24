//Example 3.2: 
clc;
clear;
close;
format('v',4)
//given data :
del_Ic=1*10^-3;// in A
del_Ib=50*10^-6;// in A
Beta=del_Ic/del_Ib;
disp(Beta,"The current amplification factor,Beta = ")
