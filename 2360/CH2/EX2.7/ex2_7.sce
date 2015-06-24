// Exa 2.7
format('v',5);clc;clear;close;
// Given data
Vrange=50;//range of voltmeter in V
V= 15;//instrument reading in V
// Limiting error at full scale
del_A= Vrange*1/100;// in V
// limiting error 
PerE= del_A/V*100;// in %
disp(PerE,"The limiting error in % is : ")
