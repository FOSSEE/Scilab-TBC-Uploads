//Exa 5.5
clc;
clear;
close;
//Given data :
A=140;//gain without feedback(unitless)
Af=17.5;//gain with feedback(unitless)
//Formula : Af=A/(1+A*Beta)
Beta=(A/Af-1)/A;//feedback ratio (unitless)
disp("Fraction of output fed back to input : "+string(Beta)+" or 1/20");