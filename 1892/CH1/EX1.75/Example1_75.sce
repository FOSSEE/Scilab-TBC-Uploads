// Example  1.75

clc;clear;close;

// Given data
format('v',6);
R2=0.05;//in ohm
X2=0.1;//in ohm

//calculations
R2dash=X2;//for max Torque
r=R2dash-R2;//in ohm
disp(r,"External resistance per phase required in ohm : ");
