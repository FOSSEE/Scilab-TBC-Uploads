clear;
clc;
disp('Example 10.10');

// aim : To determine
// (a) the mass of steam bled to each feed heater in kg/kg of supply steam
// (b) the thermal efficiency of the arrangement

// given values
P1 = 7;// steam initial pressure, [MN/m^2]
T1 = 273+500;// steam initil temperature, [K]
P2 = 2;// pressure at stage 1, [MN/m^2]
P3 = .5;// pressure at stage 2, [MN/m^2]
P4 = .05;// condenser pressure,[MN/m^2]
SE = .82;// stage efficiency of turbine

// solution
// from the enthalpy-entropy chart(Fig10.23) values of specific enthalpies are
h1 = 3410;// [kJ/kg]
h2_prim = 3045;// [kJ/kg]
// h1-h2=SE*(h1-h2_prim), so
h2 = h1-SE*(h1-h2_prim);// [kJ/kg]

h3_prim = 2790;// [kJ/kg]
// h2-h3=SE*(h2-h3_prim), so
h3 = h2-SE*(h2-h3_prim);// [kJ/kg]

h4_prim = 2450;// [kJ/kg]
// h3-h4 = SE*(h3-h4_prim), so
h4 = h3-SE*(h3-h4_prim);// [kJ/kg]

// from steam table
// @ 2 MN/m^2
hf2 = 908.6;// [kJ/kg]
// @ .5 MN/m^2
hf3 = 640.1;// [kJ/kg] 
// @ .05 MN/m^2
hf4 = 340.6;// [kJ/kg]

// (a) 
// for feed heater1
m1 = (hf2-hf3)/(h2-hf3);// mass of bled steam, [kg/kg supplied steam]
// for feed heater2
m2 = (1-m1)*(hf3-hf4)/(h3-hf4);// 
mprintf('\n (a) The mass of steam bled in feed heater 1 is  =  %f  kg/kg supply steam\n',m1);
mprintf('\n      The mass of steam bled in feed heater 2 is  =  %f kg/kg supply steam\n',m2);

// (b)
W = (h1-h2)+(1-m1)*(h2-h3)+(1-m1-m2)*(h3-h4);// theoretical work done, [kJ/kg]
Eb = h1-hf2;// energy input in the boiler, [kJ/kg]
TE1 = W/Eb;// thermal efficiency
mprintf('\n (b) The thermal efficiency of the arrangement is  =  %f percent\n',TE1*100);

// If there is no feed heating
hf5 = hf4;
h5_prim = 2370;// [kJ/kg]
// h1-h5 = SE*(h1-h5_prim), so
h5 = h1-SE*(h1-h5_prim);// [kJ/kg]
Ei = h1-hf5;//energy input, [kJ/kg]
W = h1-h5;//  theoretical work, [kJ/kg]
TE2 = W/Ei;// thermal efficiency
mprintf('\n      The thermal efficiency if there is no feed heating is  =  %f percent\n',TE2*100);

//  End 
