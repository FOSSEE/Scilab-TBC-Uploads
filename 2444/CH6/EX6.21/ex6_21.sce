// Exa 6.21
clc;
clear;
close;
format('v',6)
// Given data
dA_ByA = 0.1;// change in gain of internal amplifier
A = 60;// in dB
A = A * 16.666;// unit less
Zo = 12;// in k ohm
Zo = Zo * 10^3;// in ohm
Zoutf = 600;// in ohm
Beta = ((Zo/Zoutf)-1)/A;// unit less
disp(Beta,"The value of feed back factor is");
dAf_byAf = 1/(1+(A*Beta))*(dA_ByA)*100;// change in overall gain in %
disp(dAf_byAf,"The percentage change in overall gain in % is");
