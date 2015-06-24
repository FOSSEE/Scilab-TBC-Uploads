//Example 7.5.9: insulation resistance of cable
clc;
clear;
close;
format('v',6)
t=120;//in seconds
v1=300;//in volts
v2=100;//in volts
c=300;//capacitance in pf
r=((t)/(c*10^-12*log(v1/v2)));//resistance in ohms
disp(r*10^-12,"resistance of cable in mega ohms is")
