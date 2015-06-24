//Exa 6.15
clc;
clear;
close;
//given data :
VCC=20;//in Volt
RC=3.3*10^3;//in ohm
disp("Applying Kirchoffs Voltage Law : ");
disp("VCC=IC*RC+VCE");
disp("For cut-off point, IC=0");
disp("Therefore, VCC=VCE");
VCE=VCC;//in volt
disp(VCE,"VCE at cut-off point : ");
disp("For Saturation point, VCE = 0");
VCE=0;//in volts
IC=VCC/RC;//in A
disp(IC,"IC at saturation point in mA ; ");
disp("Therefore Load line coordinates are given as : ");
disp("("+string(20)+"V,"+string(0)+"mA)");
disp("("+string(VCE)+"V,"+string(IC*1000)+"mA)");