//Example 1.5.b // the percentage error on the basis of indicated value of 10 bar pressure
clc;
clear;
close;
//given data :
P=10; // pressure range in bar
E=0.15; // may be +ve or -ve in bar
Pe=(E/P)*100;
disp(Pe,"the percentage error,Pe(%)= ±");
