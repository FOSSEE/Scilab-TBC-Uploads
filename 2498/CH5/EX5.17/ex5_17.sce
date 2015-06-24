// Exa 5.17
clc;
clear;
close;
format('v',7)
// Given data
Zo =  12.6;// in k ohm
Zo = Zo * 10^3;// in ohm
A = 60;// in dB
A = 10^(A/20)
Zof = 500;// in ohm
// Zof = Zo/(1+(A*Beta));
Beta = ((Zo/Zof)-1)/A;
disp(Beta,"The value of feed back factor is");
// Part (ii)
dAbyA= 20/100;// change in gain of basic amplifier
dAf_byAf =dAbyA*1/(1+A*Beta)*100;//change in overall gain  in  %
disp(dAf_byAf,"The change in overall gain for 20 % change in gain of the basic amplifier in % is");

// Note: In the book, there is calculation error to find the value of dAf/Af
