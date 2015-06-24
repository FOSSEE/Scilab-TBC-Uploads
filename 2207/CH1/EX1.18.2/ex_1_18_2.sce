//Example 1.18.2: voltage of the capacitor
clc;
clear;
close;
format('v',7)
r=15;//in ohms
l=12;///inductance in mH
c=8;//capacitance in micro farads
v=100;//in volts
t=((%pi)/(sqrt((1/(l*10^-3*c*10^-6))-(r^2/(4*(l*10^-3)^2)))));// time in seconds
vc= v*(1-cosd(t/(sqrt(l*10^-3*c*10^-6))));//in volts
disp(vc,"the capacitor voltage in volts is")
//this question is not solved in the textbook
