// Example 6.4;//optical gain
clc;
clear;
close;
R1=0.32;
R2=0.32;
alpha=10;// in cm
L=500;//in micro meter
gth=alpha+(1/(2*L*10^-4)*log(1/(R1*R2)));
disp(gth,"Optical gain in per centimeter is ")
