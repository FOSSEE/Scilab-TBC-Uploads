//Exa 6.17
clc;
clear;
close;
//given data :
Beta=100;//Unitless
hfe=Beta;//Unitless
VBB=5;//in Volt
VBE=0.8;//in Volt
RB=50*10^3;//in ohm
RE=2*10^3;//in ohm
VCE=0.2;//in Volt
disp("Applying Kirchoffs Voltage Law in input loop we have : ");
disp("VBB=IB*RB+VBE+IE*RE=IB*RB+VBE+(1+Beta)*IB*RE");
disp("IB=(VBB-VBE)/(RB+(1+Beta)*RE)");
IB=(VBB-VBE)/(RB+(1+Beta)*RE);//in A
disp(IB*1000,"IB in mA : ");
disp("Applying Kirchoffs Voltage Law in output loop we have : ");
disp("10-IC(3*10^3)-VCE-IE(2*10^3)=0");
IC=(10-0.2)/(5*10^3);//in A
disp(IC*1000,"IC in mA : ");
disp(Beta*IB,"Beta*Ib in mA = ");
disp(IC,"IC = ");
disp("IC > Beta*IB. Hence the transistor is in saturation with the values of IB = 0.0166 mA and IC = 1.96 mA.")