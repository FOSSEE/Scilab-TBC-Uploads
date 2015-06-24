//Example 7.5 // LINEARITY
clc;
clear;
close;
//given data : 
V=1.8; // the output voltage
D=.0045; // the deviation from a straight line through the origin may be +ve or-ve
A=(D/V)*100;
disp(A,"age linearity,A(%) = ± ")
