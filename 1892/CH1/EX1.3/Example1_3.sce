// Example 1.3

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
N=1470;//in rpm

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//Slip
fr=S*f;//induced emf frequency in Hz
disp(fr,"Induced emf frequency in Hz : ");
