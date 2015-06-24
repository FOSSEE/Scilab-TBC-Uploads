clear ;
clc;
// Example 1.6
printf('Example 1.6\n\n');
printf('Page No. 11\n\n');
// Solution 

// Given
G1= 11.72*10^3;// hourly consumption of gas in therms
th= 34.13;// in Watts
G= G1*th;// hourly consumption of gas in Watts
O1= 4.32*10^9;// hourly consumption of oil in Joules
J= .278*10^-3;// in Watts
O= O1*J;// hourly consumption of oil in Watts
E= 500*10^3;// hourly consumption of electricity in Watts
// Pie Chart Representation : one input argument  x=[G O E]
pie([G O E],["gas" "oil" "electricity"]);// Please see the graphics window
printf('The Pie chart is plotted in the figure');

