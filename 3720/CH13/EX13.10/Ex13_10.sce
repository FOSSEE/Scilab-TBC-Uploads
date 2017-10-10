//Example 13_10
clc;clear;
// Given values
b=5;// Width in m
y_1=1.5;// m
P_w=0.6;// m
g=9.81;// m^2/s

// Calculation
H=y_1-P_w;//The weir head in m
C_wd=0.598+(0.0897*(H/P_w));// The discharge coefficient of the weir
V=C_wd*(2/3)*b*sqrt(2*g)*H^(3/2);// TShe water flow rate through the channel
printf('The  water flow rate through the channel,V=%0.2f m^3/s\n',V);
// The answer vary due to round off error
