clear;
clc;
disp('Example 10.3');

//  aim : To determine
//  (a) the thermal efficiency of the boiler
//  (b) the equivalent evaporation of the boiler
//  (c) the new coal consumption 

//  given values
ms_dot = 5400;// steam feed rate, [kg/h]
P = 750;// steam pressure, [kN/m^2]
x = .98;// steam dryness fraction
Tf1 = 41.5;// feed water temperature, [C]
CV = 31000;// calorific value of coal used in the boiler, [kJ/kg]
mc1 = 670;// rate of burning of coal/h, [kg]
Tf2 = 100;// increased water temperature, [C]

// solution
//   (a)
SRC = ms_dot/mc1;// steam raised/kg coal, [kg]
hf = 709.3;// [kJ/kg]
hfg = 2055.5;// [kJ/kg]
h1 = hf+x*hfg;// specific enthalpy of steam raised, [kJ/kg]
//  from steam table 
hfw = 173.9;// specific enthalpy of feed water, [kJ/kg]
EOB = SRC*(h1-hfw)/CV;// efficiency of boiler
mprintf('\n (a) The thermal efficiency of the boiler is  =  %f percent\n',EOB*100);

// (b)
he = 2256.9;// specific enthalpy of evaporation, [kJ/kg]
Ee = SRC*(h1-hfw)/he;// equivalent evaporation[kg/kg coal]
mprintf('\n (b) The equivalent evaporation of boiler is  =  %f  kg/kg coal\n',Ee);

// (c)
hw = 419.1;// specific enthalpy of feed water at 100 C, [kJ/kg]
Eos = ms_dot*(h1-hw);// energy of steam under new condition, [kJ/h]
neb = EOB+.05;// given condition new efficiency of boiler if 5%more than previous
Ec = Eos/neb;// energy from coal, [kJ/h]
mc2 = Ec/CV;// mass of coal used per hour in new condition, [kg]
mprintf('\n (c) Mass of coal used in new condition is  =  %f kg\n',mc2);
mprintf('\n      The saving in coal per hour is  =  %f  kg\n',mc1-mc2);

//  End
