clear;
clc;
disp('Example 4.18');

//  aim : To determine
//  the heat received by the steam per kilogram

// Given values
// initial
P1 = 4;// pressure, [MN/m^2]
x1 = .95; //  dryness fraction

//  final
t2 = 350;//  temperature,[C]

//  solution

// from steam table, at 4 MN/m^2 and x1=.95
hf = 1087.4;//  [kJ/kg]
hfg = 1712.9;//  [kJ/kg]
//  hence
h1 = hf+x1*hfg;//  [kJ/kg]

//  since pressure is kept constant ant temperature is raised so at this condition
h2 = 3095;//  [kJ/kg]

//  so by energy balance
Q = h2-h1;//  Heat received,[kJ/kg]
mprintf('\n The heat received by the steam is  =  %f  kJ/kg \n',Q);

//  End
