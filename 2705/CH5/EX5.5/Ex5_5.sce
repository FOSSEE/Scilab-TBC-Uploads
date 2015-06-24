clear;
clc;
disp('Example 5.5');

//  aim : To determine 
//  the new volume of the gas

//  Given values

//  initial codition
P1 = 140;//  [kN/m^2]
V1 = .1;//   [m^3]
T1 = 273+25;// [K]

//  final condition
P2 = 700;//  [kN/m^2]
T2 = 273+60;//  [K]

//  by charasteristic equation, P1*V1/T1=P2*V2/T2

V2=P1*V1*T2/(T1*P2);//  final volume, [m^3]

mprintf('\nThe new volume of the gas is  =  %f  m^3\n',V2);

//  End
