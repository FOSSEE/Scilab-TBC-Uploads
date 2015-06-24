//Example6.7:"design a non-inverting amplifer "
//Page 205
clear;
clc;
Av=20;          //in dB
Av1=10^(Av/20);            //ordinary gain
Rf=1500;            //in Ohm (Assumption)
//Av=1+Rf/R  we know
R=Rf/(Av1-1);
disp("Ohm",R,"R");
//Result//
