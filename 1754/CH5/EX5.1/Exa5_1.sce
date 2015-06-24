//Exa 5.1
clc;
clear;
close;
//Given data :
A=50;//gain(unitless)
Af=10;//gain(unitless)
//Formula : Af=A/(1+A*Beta)
Beta=(A/Af-1)/A;//feedback ratio (unitless)
disp(Beta*100,"Percentage of output fed back(%) : ");