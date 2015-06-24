//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 12


clear;
clc;


//Given:
Tin_cool = 288; //entering temperature of cooling water (K)
Tout_cool = 300; //discharge temperature of cooling water (K)
m_c = 0.25; //mass flow rate of coling water (kg/s)
m = 0.5; //mass flow rate of ammonia (kg/min)
Ha = 1426; //enthalpy of saturated ammonia vapour at 258 K (kJ/kg)
Hd = 281.5; //enthalpy of liquid ammonia at 294 K (kJ/kg)
eff = 0.9; //compressor efficiency
Cp = 4.2; //specific heat of water (kJ/kg K)
tof = 12660; //ton of refrigeration (kJ/h)

//To determine the power requirement and refrigeration capacity in tons
Q1 = m_c*Cp*(Tout_cool-Tin_cool); //heat rejected by compressor at constant pressure (kJ/s)
Q2 = (m/60)*(Ha-Hd); //heat absorbed (kJ/s)
W = Q1-Q2; //work required (kJ/s)
P = (W*1000)/(eff*746); //power requirement of compressor (hp)
mprintf('Power requirement of the compressor is %f hp',P);

rc = Q2*3600/tof; //refrigeration capacity (ton)
mprintf('\n Refrigeration capacity is %f ton',rc);

//end