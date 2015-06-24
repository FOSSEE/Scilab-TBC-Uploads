clc
clear 
//example 7.16
//to find the rate of reaction
E = 75200    //in J/mol
E1 = 50100   //in J/mol
R = 8.314    //in J/mol K
T = 298   //in K
ratio = exp((E1-E)/(R*T));
rate_increase = ratio^-1
disp ("times",rate_increase,"increase in rate of reaction =")
