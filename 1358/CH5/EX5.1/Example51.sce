// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 1")
T01 = 292;//K
P01 = 1;//bar
etac = 0.85;
disp("Using the isentropic P–T relation for compression processes,")
disp("Ratio = P02/P01 = (T02a/T01)^(gamma/(gamma-1))")
disp("where T02a is the isentropic temperature at the outlet. Therefore,")
Ratio = 9.5;
T02a = T01*(Ratio)^0.286//Kelvin
disp("Now, using isentropic efficiency of the compressor in order to find the actual temperature at the outlet,")
T02 = T01 + (T02a - T01)/etac
disp("Work of compression: in kJ/kg")
Cp = 1.005;
Wc = Cp*(T02-T01)
