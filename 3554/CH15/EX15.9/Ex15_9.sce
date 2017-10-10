// Exa 15.9

clc;
clear all;

// Given data
// Refering Fig. 15.2(a)- All pass filter
f=2.5;// Input frequency in kHz

// Solution

disp(" Let C=0.01 micro farads and R= 15 k Ohms");
C=0.01;// micro farads
R=15;// k Ohms
Phi=2*atan(2*%pi*f*C*R); // phase angle in radians

printf(' This means that the output voltage Vo has the same frequency and amplitude as the input voltage but lags it by - %d degrees\n',Phi*180/%pi);

