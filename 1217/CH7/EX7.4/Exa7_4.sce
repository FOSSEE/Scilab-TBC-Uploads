// Exa 7.4
clc;
clear;
close;
// given data 
VSat=13;//in Volt
R1=270;//in ohm
R2=39;//in Kohm
Vut=R1*VSat/(R1+R2*1000);//in Volt
Vlt=R1*(-VSat)/(R1+R2*1000);//in Volt
VH=Vut-Vlt;//in Volt
disp(Vut*1000,"The upper threshold voltage in mVolt is :");
disp(Vlt*1000,"The lower threshold voltage in mVolt is :");
disp(VH*1000,"Hysteresis voltage in mVolt is :");