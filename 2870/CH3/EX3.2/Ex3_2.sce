clc;clear;
//Example 3.2

//given values
V=2;
P=50;

//Values from Table A-5E
T=280.99;//in F
v=8.5175;//in ft^3/lbm

//caluclation
m=V/v;//dimension analysis
disp(m,'mass of vapour inside cylinder in lbm');
disp(T,'temp inside cylinder in F')
