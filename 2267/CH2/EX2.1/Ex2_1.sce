//Part A Chapter 2 Example 1
clc;
clear;
close;
format('v',6);
cp=2.286;//kJ/kgK
cv=1.768;//kJ/kgK
Rbar=8.3143;//universal gas constant
R=cp-cv;//kJ/kgK
M=Rbar/R;//kg/kg.mol.(Molecular weight)
disp("Molecular weight of gas = "+string(M)+" kg/kg.mol.");
