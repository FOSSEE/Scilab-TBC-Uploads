// Example 1.16
clc;
clear;
close;
// Given data
format('v',6);
Vz= 1.8;// in V
VBE= 0.7;// in V
RE= 1;// in kΩ
Beta= 180;
VB= Vz-VBE;// in V
IE= VB/RE;//emitter current in mA
// Formula : I= IC= IE*(Beta/(Beta+1))
IC= IE*Beta/(Beta+1);// in mA
disp(IC,"The value of current in mA is : ")

