//Example 2.29 //percentage error
clc;
clear;
close;
//given data :
R=4; // in ohm
f=500; // in kilo-Hz
C=120; // in pico-farad
O=0.02; // in ohm
w=2*%pi*f*10^3;
Qt=1/(w*C*10^-12*R);
Qi=1/(w*C*10^-12*(R+O));
Pe=((Qt-Qi)/Qt)*100;
disp(Pe,"the percentage error,Pe(%) = ")
