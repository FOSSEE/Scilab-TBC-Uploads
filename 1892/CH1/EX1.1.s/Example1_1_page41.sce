// Example 1.1 Page: 41  

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
N=1410;//in rpm

//Calculations
Ns=120*f/P;//in r
disp(Ns,"Synchronous speed in rpm : ");
S=(Ns-N)/Ns;//Full load slip
S=S*100;//in %
disp(S,"Full load slip in % : ");
