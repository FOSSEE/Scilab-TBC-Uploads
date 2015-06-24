// Example 3.2

clear; clc; close;

format('v',8);
// Given data
n=4;//no. of phase
Ns=12;//stator teeth
Nr=3;//rotor teeth

//Calculations
Beta=360/n/Nr;//in degree
disp(Beta,"Step Angle in degree : ");
