clear;
clc;
disp('Example 10.1');

//  aim : To determine
//   the equivalent evaporation

//  Given
P = 1.4;//  [MN/m^2]
m = 8;//  mass of water,[kg]
T1 = 39;//  entering temperature,[C]
T2 = 100;//  [C]
x = .95;//dryness fraction 

//  solution
hf = 830.1;//  [kJ/kg]
hfg = 1957.7;//  [kJ/kg]
//  steam is wet so specific enthalpy of steam is
h = hf+x*hfg;//  [kJ/kg]

//  at 39 C
h1 = 163.4;//  [kJ/kg]
//  hence
q = h-h1;//  [kJ/kg]
Q = m*q;//  [kJ]

evap = Q/2256.9;//  equivalent evaporation[kg steam/(kg coal)]

mprintf('\n The equivalent evaporation, from and at 100 C is  =  %f  kg steam/kg coal\n ',evap);

// End
