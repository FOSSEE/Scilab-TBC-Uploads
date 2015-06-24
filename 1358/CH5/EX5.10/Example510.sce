// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 10")
disp("Using the isentropic P–T relation for the compression process,")
disp("P02/P01 = r,  T02a in Kelvin is")
r = 6
T01 = 285;
gam = 1.4;
x = (gam-1)/gam;
T02a = T01*r^x
disp("Using the polytropic P–T relation for the compression process:")
etainf = 0.85;
disp("(n-1)/n = R")
R = (gam-1)/(gam*etainf)
disp("Actual temperature rise:")
T02 = T01*r^R
disp("The compressor isentropic efficiency is given by:")
etac = (T02a-T01)/(T02-T01) *100
