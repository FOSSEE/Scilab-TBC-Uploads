clear;
clc;
disp('Example 10.8');

//  aim : To determine
//  (a) the rankine fficiency
//  (b) the specific steam consumption
//  (c) the carnot efficiency of the cycle

// given values
P1 = 1100;// steam entering pressure, [kN/m^2]
T1 = 273+250;// steam entering temperature, [K]
P2 = 280;// pressure at point 2, [kN/m^2]
P3 = 35;// pressure at point 3, [kN/m^2]

// solution
// (a)
// from steam table, at P1  and T1 is
hf1 = 2943;// [kJ/kg]
hg1 = 2902;// [kJ/kg]
h1 = hf1-.1*(hf1-hg1); // [kJ/kg]

sf1 = 6.926;// [kJ/kg K]
sg1 = 6.545;// [kJ/kg K]
s1 = sf1-.1*(sf1-sg1);// [kJ/kg K]

// at P2
sf2 = 1.647;// [kJ/kg K] 
 sg2 = 7.014;// [kJ/kg K]
// s2=sf2+x2(sg2-sf2)
// since expansion through turbine is isentropic so s1=s2
 // hence
 s2  = s1;
 x2 = (s2-sf2)/(sg2-sf2);// dryness fraction
 
 // at point 2
 hf2 = 551.4;// [kJ/kg]
 hfg2 = 2170.1;// [kJ/kg]
 h2 = hf2+x2*hfg2;// [kJ/kg]
 vg2 = .646;// [m^3/kg]
 v2 = x2*vg2;// [m^3/kg]
 
 // by Fig10.20.
 A6125 = h1-h2;// area of 6125, [kJ/kg]
 A5234 = v2*(P2-P3);// area 5234, [kJ/kg]
 W = A6125+A5234;// work done 
 hf = 304.3;// specific enthalpy of water at condenser pressuer, [kJ/kg]
 ER = h1-hf;// energy received, [kJ/kg]
 Re = W/ER;// rankine efficiency
 mprintf('\n (a) The rankine efficiency is  =  %f percent\n',Re*100);
 
 // (b)
 kWh = 3600;// [kJ]
 SSC = kWh/W;// specific steam consumption, [kJ/kWh]
 mprintf('\n (b) The specific steam consumption is = %f kJ/kWh\n',SSC);
 
 // (c)
 // from steam table 
T3 = 273+72.7;// temperature at point 3
CE = (T1-T3)/T1;// carnot efficiency
mprintf('\n (c) The carnot efficiency of the cycle is  =  %f percent\n',CE*100);

//  End
