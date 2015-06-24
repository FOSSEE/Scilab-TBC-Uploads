clear;
clc;
disp('Example 10.2');

// aim : To determine 
//  the mass of oil used per hour and the fraction of enthalpy drop through the turbine
//  heat transfer available per kilogram of exhaust steam

//  Given values
ms_dot = 5000;// generation of steam, [kg/h]
P1 = 1.8;// generated steam pressure, [MN/m^2]
T1 = 273+325;// generated steam temperature, [K]
Tf = 273+49.4;// feed temperature, [K]
neta = .8;// efficiency of boiler plant 
c = 45500;// calorific value, [kJ/kg]
P = 500;// turbine generated power, [kW]
Pt = .18;// turbine exhaust pressure, [MN/m^2]
x = .98;// dryness farction of steam

//  solution
//  using steam table at 1.8 MN/m^2
hf1 = 3106;// [kJ/kg]
hg1 = 3080;// [kJ/kg]
//  so
h1 = hf1-neta*(hf1-hg1);// [kJ/kg]
//  again using steam table specific enthalpy of feed water is
hwf = 206.9;// [kJ/kg]
h_rais = ms_dot*(h1-hwf);// energy to raise steam, [kJ]

h_fue = h_rais/neta;// energy from fuel per hour, [kJ]
m_oil = h_fue/c;// mass of fuel per hour, [kg]

//  from steam table at exhaust
hf = 490.7;// [kJ/kg]
hfg = 2210.8;//  [kJ/kg]
//  hence
h = hf+x*hfg;// [kJ/kg]
//  now
h_drop = (h1-h)*ms_dot/3600;// specific enthalpy drop in turbine [kJ]
f = P/h_drop;// fraction ofenthalpy drop converted into work
//  heat transfer available in exhaust is
Q = h-hwf;// [kJ/kg]
mprintf('\n The mass of oil used per hour is  =  %f  kg\n',m_oil);
mprintf('\n The fraction of the enthalpy drop through the turbine that is converted into useful work is  =  %f\n',f);
mprintf('\n The heat transfer available in exhaust steam above 49.4 C is  =  %f  kJ/kg\n',Q);

//  End
