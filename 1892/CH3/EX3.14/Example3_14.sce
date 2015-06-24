// Example 3.14

clear; clc; close;

format('v',7);
// Given data
J=4*10^-4;//in Kgm^2;
Tm=0.3;//in N-m
Qs=3;//in degree

//Calculations
Qs=Qs*%pi/180;//in radian
//Formula : Tm=J*Qs*dfBYdt;//in N-m
dfBYdt=Tm/J/Qs;//in step/sec^2
disp(dfBYdt,"Maximum acceleration in steps/sec^2 : ");
