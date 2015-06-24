//Example 6.8(d)

clear;

clc;

Vs=13;

A=10;

ft=1*10^6;

SR=0.5*10^6;

f=2*10^3;

Vommax=SR/(2*%pi*f);

if Vommax>Vs then
Vimmax=Vs/A;

printf("Useful Input Amplitude Range is Vim<=%.2f V",Vimmax);