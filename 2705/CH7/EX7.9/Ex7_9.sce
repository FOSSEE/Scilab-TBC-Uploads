clear;
clc;
disp('Example 7.9');

//  aim : To determine
//  the  change of entropy

// Given values
P1 = 700;// initial pressure, [kN/m^2]
T1 = 273+150;//  Temperature ,[K]
V1 = .014;// initial volume, [m^3]
V2 = .084;//  final volume, [m^3]

//  solution
//  since process is isothermal so
T2 = T1;
// and using fig.7.10
del_s = P1*V1*log(V2/V1)/T1 ;//  [kJ/K]
mprintf('\n The change of entropy is  =  %f  kJ/kg K\n',del_s);

//  End
