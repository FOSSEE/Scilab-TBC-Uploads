// Example 6.2
format('v',4)
clc;
clear;
close;
// given data
R1= 10;// in Ω
R2= 10010;// in Ω
V1= 10;// in V
// The total voltage across the 10 Ω resistance 
V= R1/R2*V1;// in V
V= V*10^3;// in mV
disp(V,"The total voltage across the 10 Ω resistance in mV is :");

