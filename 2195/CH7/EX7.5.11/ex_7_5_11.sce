//Example 7.5.11: resistance 
clc;
clear;
close;
t=200;// in volts
i=0.5;//in amperes
ra=10;//in ohms
x=t/i;//in ohms
r=x-ra;//in ohms
disp(r,"unknown resistance in ohms is")
