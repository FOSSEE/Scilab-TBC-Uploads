//fiber optic communications by joseph c. palais
//example 7.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
R=50;//load resistor in ohm
P=1*10^-6;//optic power absorbed by the detector
Row=6.4*10^-3;//responsivity in A/W
//to find
i=Row*P;//current produced by detector in A
v=i*R;//output voltage in V
mprintf('voltage across the 50 ohm load resistor=%fnV',v*1e9)//multiplication by 1e9 converts unit from V to nV
