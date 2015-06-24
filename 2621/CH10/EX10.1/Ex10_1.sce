// Example 10.1
clc;
clear;
close;
// Given data
format('v',6);
Idc= 300;// in mA
C= 200;// in µF
Vmax= 24;// in V
Vrms= 2.4*Idc/C;//in V
Vr_peak= sqrt(3)*Vrms;// in V
Vdc= Vmax-Vr_peak;// in V
disp(Vdc,"The minimum input voltage in volts is : ")




