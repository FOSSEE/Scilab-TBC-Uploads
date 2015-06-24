//Example 2.2://self inductance
clc;
clear;
close;
c=20;//pF
rs=10000;//ohms
l=(c*10^-12)*rs^2;//henry
disp(l*10^3,"self inductance in mH")
