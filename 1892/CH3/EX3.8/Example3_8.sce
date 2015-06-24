// Example 3.8

clear; clc; close;

format('v',6);
// Given data
m=4;//phases
Beta=1.5;//in degree

//Calculations
//Formula : Beta=360/m/Nr
Nr=360/m/Beta;//no. of rotor teeth
disp(Nr,"No. of rotor teeth ; ");
Ns=Nr;//no. of stator teeth
disp(Ns,"In multi stack motor, Stator teeth = rotor teeth = ");
