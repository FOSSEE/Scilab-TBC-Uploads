// Example 1.20
clc;
clear;
close;
// Given data
format('v',6);
VCC= 18;// in V
R1= 4.7;// in kΩ
R2= 5.6;// in kΩ
R3= 6.8;// in kΩ
RE= 1.1;// in kΩ
VBE= 0.7;// in V
VT= 26;// in mV
RC= 1.8*10^3;// in Ω
IE1= (VCC*R1/(R1+R2+R3)-VBE)/RE;// in mA
re_desh= VT/IE1;//dynamic resistance of each transistor in Ω
Av= -RC/re_desh;// voltage gain of the cascode amplifier
disp(Av,"The voltage gain of the cascode amplifier is : ")




