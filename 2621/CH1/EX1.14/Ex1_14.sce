// Example 1.14
clc;
clear;
close;
// Given data
format('v',6);
VCC= 10;// in V
VBE= 0.7;// in V
R1= 15;// in kΩ
Beta= 100;
I_REF= (VCC-VBE)/R1;//reference current in mA
disp(I_REF,"The reference current in mA is : ")
Iout= I_REF*Beta/(Beta+2);// output current in mA
disp(Iout,"The output current in mA is : ")

