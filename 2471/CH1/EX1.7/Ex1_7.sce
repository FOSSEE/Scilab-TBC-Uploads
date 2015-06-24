close
clear ;
clc;
// Example 1.7
printf('Example 1.7\n\n');
printf('Page No. 12\n\n');
// Solution 

// Given
O= 150*10^3;// energy consumption in office heating in Watts
L= 120*10^3;// energy consumption in lighting in Watts
B= 90*10^3;// energy consumption in boiler house in Watts
P= 180*10^3;// energy consumption in process in Watts
// Pie Chart Representation : one input argument  x=[O L B P]
pie([O L B P],["office heating" "lighting" "boiler heating" "process"]);// Please see the graphics window
printf('The Pie chart is plotted in the figure');

