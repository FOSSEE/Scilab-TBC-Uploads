// Exa 3.4
format('v',5)
clc;
clear;
close;
// given data
C1= 560;//transistor capacitance at 1V in pF
C2= 30;//transistor capacitance at 10V in pF
// The tuning range 
tuningRange= C1/C2;
disp(tuningRange,"The tuning range is : ")
