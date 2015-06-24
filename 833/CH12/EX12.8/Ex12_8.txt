//Caption:Find the % tappings required
//Exa:12.8
clc;
clear;
close;
s=0.04//Slip
a=4//Ratio of short circuit current to full load current
b=40//Starting torque to full load torque(in%)
x=sqrt((b/100)/(s*(a^2)))*100
disp(x,'% tappings required is(in%)=')