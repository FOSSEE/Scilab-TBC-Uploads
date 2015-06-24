//Calculate Conduction electron and hole density
//Ex:15.8
clc;
clear;
close;
ni=1.5*10^16;//intrinsic carrier concentration per cu. m
n=10^19;//no. of conduction electrons in per cu. m
p=ni^2/n;//in per cu.m
disp(p,"Conduction electron and hole density (per cubic m) = ");