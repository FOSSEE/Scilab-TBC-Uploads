//Example 3.11: 
clc;
clear;
close;
//given data :
alfa=0.98;// 
del_Ie=5;// in mA
del_Ic=alfa*del_Ie;// in mA
del_Ib=del_Ie-del_Ic;
format('v',4)
disp(del_Ib,"change in base current,(mA) = ")
