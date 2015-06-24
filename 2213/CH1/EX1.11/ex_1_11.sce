//Example 1.11 // frequency
clc;
clear;
close;
format('v',5)
p=5*10^-7;//specific resistance in Ω-m
rp=1;//relative permeability
dp=0.0015;//depth of penetration in mter
f=((p*10^7)/((rp*(dp)^2)*4*(%pi)^2))*10^-3;//frequency in kHz
disp(f,"frequency in kHz")
