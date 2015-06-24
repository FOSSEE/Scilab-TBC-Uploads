//Example 11.1: Total Length
clc;
clear;
close;
//given data :
l=20;// in m
w=0.5;// weight per meter in kg
T=500;// Tension applied in kg
del=(w*l^2)/(2*T);
two_S=2*(l+(2/3)*(del^2/l));
disp(two_S,"Total Length(m) = ")
