// Example 1.49

clear; clc; close;

format('v',6);
// Given data
PA=4;//no. of poles
PB=6;//no. of poles
f=50;//in Hz

//Calculations
Ns=120*f/PA;//in rpm, A running alone
disp(Ns,"(1.) If A running alone, Speed in rpm is : ");
Ns=120*f/PB;//in rpm, B running alone
disp(Ns,"(2.) If B running alone, Speed in rpm is : ");
Ns=120*f/(PA+PB);//in rpm, Cumulative cascade
disp(Ns,"(3.) For Cumulative cascade, Speed in rpm is : ");
Ns=120*f/(PA-PB);//in rpm, Differential cascade
disp(Ns,"(4.) Differential cascade, Speed in rpm is : ");
