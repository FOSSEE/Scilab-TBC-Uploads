clear;
clc;
disp('Example 5.3');

//  aim : To determine 
//  the new volume of the gas

//  Given values
V1 = 10000;//  [mm^3]
T1 = 273+18;//  [K]
T2 = 273+85;//  [K]

//  solution
//  since pressure exerted on the apparatus is constant so using charle's law V/T=constant
//  hence
V2 = V1*T2/T1;//  [mm^3]

mprintf('\n The new volume of the gas trapped in the apparatus is  =  %f  mm^3\n',V2);

//  End
