// Example 3.3

clear; clc; close;

format('v',6);
// Given data
MainPoles=10;//no. of main poles
teeth=7;//no. of teeth/pole
Nr=60;//rotor teeth

//Calculations
Ns=MainPoles*teeth;//stator teeth
Beta=(Ns-Nr)*360/Ns/Nr;//in degree
disp(Beta,"Step Angle in degree : ");
