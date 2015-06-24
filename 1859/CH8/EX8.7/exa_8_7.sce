// Exa 8.7
clc;
clear;
close;
// Given data
L=10;// trace length in cm
DS= 5;// deflection sensitivity in V/cm
V_peakTOpeak= L*DS;// in volt
V_peak= V_peakTOpeak/2;// in volt
RMS= V_peak/sqrt(2);// RMS value of unknown as voltage in volt
disp(RMS,"AC voltage in volt") 
