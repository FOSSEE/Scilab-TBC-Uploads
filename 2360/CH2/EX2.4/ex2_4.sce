// Exa 2.4
format('v',7);clc;clear;close;
// Given data
Fullscaledeflection = 30;//full scale deflection in cm
n = 30;// number of divisions
scaledivision = Fullscaledeflection/n;//scale division in cm
scaledivision = scaledivision * 10;// in mm
Resolution = (1/20)*scaledivision;// in mm
disp(Resolution,"The Resolution of the scale in mm is");
