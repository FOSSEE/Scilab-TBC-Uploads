//Example 6.8(b)

clear;

clc;

Vs=15;

A=10;

f=10*10^3;

SR=0.5*10^6;

Vommax=SR/(2*%pi*f);

Vimmax=Vommax/A;

printf("Maximum Value of Vim before the output distorts=%.3f V",Vimmax);