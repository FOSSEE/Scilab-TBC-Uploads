//Exa 2.46
clc;
clear;
close;
//Given data :
format('v',5);
R2inner=0.4;//in ohm
X2inner=2;//in ohm 
R2outer=2;//in ohm
X2outer=0.4;//in ohm 
//At standstill :
S=1;//unitless
Ratio=(R2outer*S/(R2outer^2+S^2*X2outer^2))/(R2inner*S/(R2inner^2+S^2*X2inner^2));//unitless
disp(Ratio,"Ratio of torque produced by two cages at standstill : ");
//At Full load :
S=5;//in %
S=5/100;//fractional
Ratio=(R2outer*S/(R2outer^2+S^2*X2outer^2))/(R2inner*S/(R2inner^2+S^2*X2inner^2));//unitless
disp(Ratio,"Ratio of torque produced by two cages at full load(slip=5%) : ");