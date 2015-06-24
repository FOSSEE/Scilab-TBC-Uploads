clear;
clc;
disp('Example 4.11');

// aim: To determine
//  the change of internal energy

//  Given values
m = 1.5;//  mass of steam,[kg]
P1 = 1;//  initial pressure, [MN/m^2]
t = 225;//  temperature, [C]
P2 = .28;//  final pressure, [MN/m^2]
x = .9;//  dryness fraction of steam at P2

//  solution

// from steam table at P1
h1 = 2886;//  [kJ/kg]
v1 = .2198; //  [m^3/kg]
//  hence
u1 = h1-P1*v1*10^3;// internal energy [kJ/kg]

// at P2
hf2 = 551.4;// [kJ/kg]
hfg2 = 2170.1;// [kJ/kg]
vg2 = .646; //  [m^3/kg]
//  so
h2 = hf2+x*hfg2;//  [kj/kg]
v2 = x*vg2;//   [m^3/kg]

// now
u2 = h2-P2*v2*10^3;//  [kJ/kg]

//  hence change in specific internal energy is
del_u = u2-u1;//  [kJ/kg]

del_u = m*del_u;//  [kJ];
mprintf('\n The change in internal energy is  =  %f  kJ \n',del_u);

//  End
