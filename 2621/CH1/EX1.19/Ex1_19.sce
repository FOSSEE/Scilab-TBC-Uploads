// Example 1.19
clc;
clear;
close;
// Given data
format('v',8);
VCC= 5;// in V
VBE= 0.7;// in V
VEE= -5;// in V
VT= 26;// in mV
R= 18.6;// in kΩ
Beta= 100;
I2= (VCC-VBE-VEE)/R;// in mA
IC3= I2;// in mA (due to current mirror action)
IE= IC3/2;// emitter current of transistor Q1 and Q2
re_desh= VT/IE;//AC emitter resistance of transistor in Ω
Rin1= 2*Beta*re_desh;// in Ω
Rin1= Rin1*10^-3;// in kΩ
disp(Rin1,"The differential input resistance in kΩ is : ")

