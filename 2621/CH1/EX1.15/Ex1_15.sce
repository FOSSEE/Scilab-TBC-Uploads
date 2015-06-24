// Example 1.15
clc;
clear;
close;
// Given data
format('v',5);
VCC= 15;// in V
VBE= 0.7;// in V
R1= 2.2;// in kΩ
Beta= 220;
I_REF= (VCC-VBE)/R1;//reference current in mA
// Formula : I= IC= I_REF*(Beta/(Beta+2))
IC= I_REF*Beta/(Beta+2);// in mA
disp(IC,"The value of current in mA is : ")

