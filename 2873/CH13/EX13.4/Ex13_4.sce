// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 13 Example 4")
Po=2;//total pressure in bar
P=0.3;//static pressure in bar
y=1.4;//expansion constant
disp("we know that,Po/P=(1+(y-1)*M^2/2)^((y)/(y-1))")
disp("so M=sqrt((exp(log(Po/P)/(y/(y-1)))-1)/((y-1)/2))")
M=sqrt((exp(log(Po/P)/(y/(y-1)))-1)/((y-1)/2))
disp("so mach number,M=1.89")
