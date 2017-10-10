close();
clear;
clc;
//time taken 't' for 'rev' revolutions, non-inductive load 'I', voltage 'V' and frequency 'f' of single phase energy meter with constant 'k'
k = 200; //rev/kWh
t = 180; //seconds
rev = 10; 
I = 4.4; //A
V = 230; //V
f = 50; //Hz
//pf = cos(phi)
pf = 1; //for non-inductive load
//Energy consumed 'E'
E = V*I*t*pf/(1000*3600); //kWh
//Energy registered by meter 'Eg'
Eg = rev/k; //kWh
//percentage error 'per_error'
per_error = (Eg-E)*100/E;
mprintf("Percentage error of the instrument = %0.3f %%",per_error);