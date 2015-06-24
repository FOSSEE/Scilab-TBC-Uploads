
// Example 2-7, page 52

clear;clc; close;

// Given data
I(1)=2*10^-9;// surface leakage current in  amperes at given reverse voltage 
V(1)=25;// reverse voltage in volts at which surface leakage is known
V(2)=35;// reverse voltage in volts at which surface leakage current is to be found

// Calculations
I(2)=V(2)*I(1)/V(1);// surface leakage current is directly proportional to reverse voltage
disp("Amperes",I(2),"Surface leakage Current =")

// result
// surface leakage current is 2.8 nano amperes.
