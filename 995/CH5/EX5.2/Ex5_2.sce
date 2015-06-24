//Ex:5.2
clc;
clear;
close;
i=15*10^-3;
R=(21-2.2)/i;
v=18.8;//in volts
P=i*v*1000;
printf("Resistor %d ohms of %d mW",R,P);