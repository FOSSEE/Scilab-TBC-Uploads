// Exa 4.4
clc;
clear;
close;
// Given data
I=40;// in mA
I=I*10^-3;// in A
lamda=1310*10^-9;// in m
h= 6.62*10^-34; // in Js
c= 3*10^8;// in m/s
e= 1.6*10^-19;// in C
toh_r= 30;// in ns
toh_nr= 100;// in ns
toh= toh_r*toh_nr/(toh_r+toh_nr);
nita_int= toh/toh_r;
disp(nita_int,"The internal quantum efficiency is : ")
Ep= h*c/lamda;// in J
P= nita_int*Ep*I/e;// in W
disp(P*10^3,"The optical power generated internally to the LED in mW is : ");
 
// Note : There is a calculation error in evaluating the value of P so the answer in the book is wrong
