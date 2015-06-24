// Exa 9.2
clc;
clear;
close;
// Given data
scale= 100;// in mV/cm
gh= 5.2;//amplitude of the graph in cm
PtoPamplitude= gh*scale;// in mV
disp(PtoPamplitude*10^-3,"Peak-to-peak amplitude in V is : ")
