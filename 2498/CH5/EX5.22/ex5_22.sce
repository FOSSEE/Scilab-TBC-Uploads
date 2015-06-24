// Exa 5.22
clc;
clear;
close;
format('v',8)
// Given data
A = 10000;
Beta = 0.02;
Zi = 1;// in k ohm
Zi = Zi * 10^3;// in ohm
Zo = 10;// in k ohm
Zo = Zo * 10^3;// in ohm
// The input impedance 
Zif = Zi*(1+(A*Beta));// in ohm
Zif= Zif*10^-3;// in k ohm
disp(Zif,"The input impedance in k ohm is");
// The output impedance 
Zof = Zo/(1+(A*Beta));// in ohm
Zof= Zof*10^-3;// in k ohm
disp(Zof,"The output impedance in k ohm is");

// Note: In the book, there is calculation error to find the value of Zof because 10/201 will be 0.04975 not 0.4975
