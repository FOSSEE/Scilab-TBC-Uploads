//Exa 6.16
clc;
clear;
close;
//given data :
Beta=45;//Unitless
VBE=0.7;//in Volt
VCC=0;//in Volt
RB=10^5;//in ohm
RC=1.2*10^3;//in ohm
VEE=-9;//in Volt
disp("Applying Kirchoffs Voltage Law in input loop we have : ");
disp("IB*RB+VBE+VEE=0");
IB=-(VBE+VEE)/RB;//in mA
IC=Beta*IB;//in mA
VC=VCC-IC*RC;//in Volts
VB=VBE+VEE;//in Volts
disp(VC,"VC in volts : ");
disp(VB,"VB in volts : ");