// Example 1.13
clc;
clear;
close;
// Given data
format('v',6);
VCC= 12;// in V
VBE= 0.7;// in V
R1= 25;// in kΩ
// I= I_REF= (VCC-VBE)/R1
I= (VCC-VBE)/R1;// mirrored current in mA
disp(I,"The mirrored current in mA is : ");




