// Compute Current
clc;
clear;

i=3;
L=10;
t=20*(10^-3);
V=20*(10^3);

E=L*i*i/2;

P=E/t;

I=P/V;

disp('amperes',I,'The Current in the spark plug =')
