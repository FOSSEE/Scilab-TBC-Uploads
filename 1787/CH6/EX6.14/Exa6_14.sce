//Exa 6.14
clc;
clear;
close;
//given data
VCC=10;//in volt
RC=8;//in Kohm
Beta=40;//unitless
IB=15;//in uA
IB=IB*10^-3;//in mA
// For VCE = 0 Volts
IC=VCC/RC;//in mA
disp(IC,"VCE=0V and IC in mA = ");
disp("This gives a point on loasd line.");
//For IC=0 VCE=VCC=10V :
disp("For IC=0, VCE=VCC=10V :")
disp("This gives another point on load line.");
IC=Beta*IB;//in mA
VCE=VCC-IC*RC;//in Volts
disp("Operating point Q is ("+string(VCE)+"V,"+string(IC)+"mA)");