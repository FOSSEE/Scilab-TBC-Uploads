clear;
clc;
disp('Example 10.9');

// aim : To determine
// (a) the theoretical power of steam passing through the turbine
// (b) the thermal efficiency of the cycle
// (c) the thermal efficiency of the cycle assuming there is no reheat

// given values
P1 = 6;// initial pressure, [MN/m^2]
T1 = 450;// initial temperature, [C]
P2 = 1;// pressure at stage 1, [MN/m^2]
P3 = 1;// pressure at stage 2, [MN/m^2]
T3 = 370;// temperature, [C]
P4 = .02;// pressure at stage 3, [MN/m^2]
P5 = .02;// pressure at stage 4, [MN/m^2]
T5 = 320;// temperature, [C]
P6 = .02;// pressure at stage 5, [MN/m^2]
P7 = .02;// final pressure , [MN/m^2]

// solution
// (a) 
// using Fig 10.21
h1 = 3305;// specific enthalpy, [kJ/kg]
h2 = 2850;// specific enthalpy, [kJ/kg]
h3 = 3202;// specific enthalpy, [kJ/kg]
h4 = 2810;// specific enthalpy, [kJ/kg]
h5 = 3115;// specific enthalpy, [kJ/kg]
h6 = 2630;// specific enthalpy, [kJ/kg]
h7 = 2215;// specific enthalpy, [kJ/kg]
W = (h1-h2)+(h3-h4)+(h5-h6);// specific work through the turbine, [kJ/kg]
mprintf('\n (a) The theoretical power/kg steam/s is  =  %f kW\n',W);

// (b)
// from steam table
hf6 = 251.5;// [kJ/kg]

TE1 = ((h1-h2)+(h3-h4)+(h5-h6))/((h1-hf6)+(h3-h2)+(h5-h4));// thermal efficiency
mprintf('\n (b) The thermal efficiency of the cycle is  =  %f percent\n',TE1*100);

// (c)
// if there is no heat
hf7 = hf6;
TE2 = (h1-h7)/(h1-hf7);// thermal efficiency
mprintf('\n (c) The thermal efficiency of the cycle if there is no heat is  =  %f percent\n',TE2*100);

//  End
