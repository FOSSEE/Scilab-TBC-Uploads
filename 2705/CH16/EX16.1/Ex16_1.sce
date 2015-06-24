clear;
clc;
disp('Example 16.1');

// aim : To determine 
// (a) the net power output of the turbine plant if the turbine is coupled to the compresser
// (b) the thermal efficiency of the plant
// (c) the work ratio

// Given values
P1 = 100;// inlet pressure of compressor, [kN/m^2]
T1 = 273+18;// inlet temperature, [K]
P2 = 8*P1;// outlet pressure of compressor, [kN/m^2]
n_com = .85;// isentropic efficiency of compressor
T3 = 273+1000;//inlet temperature of turbine, [K]
P3 = P2;// inlet pressure of turbine, [kN/m^2]
P4 = 100;// outlet pressure of turbine, [kN/m^2]
n_tur = .88;// isentropic efficiency of turbine
m_dot = 4.5;// air mass flow rate, [kg/s]
cp = 1.006;// [kJ/kg K]
Gamma = 1.4;// heat capacity ratio

// (a)
// For the compressor
T2_prime = T1*(P2/P1)^((Gamma-1)/Gamma);// [K]
T2 = T1+(T2_prime-T1)/n_com;//  exit pressure of compressor, [K]

// for turbine
T4_prime = T3*(P4/P3)^((Gamma-1)/Gamma);// [K]
T4 = T3-(T3-T4_prime)*n_tur;// exit temperature of turbine, [K]

P_output = m_dot*cp*((T3-T4)-(T2-T1));// [kW]
mprintf('\n (a) The net power output is  =  %f  kW\n',P_output);

// (b)
n_the = ((T3-T4)-(T2-T1))/(T3-T2)*100;// thermal efficiency
mprintf('\n (b) The thermal efficiency of the plant is  =  %f percent\n',n_the);

// (c)
P_pos = m_dot*cp*(T3-T4);// Positive cycle work, [kW]

W_ratio = P_output/P_pos;// work ratio
mprintf('\n (c) The work ratio is  =  %f\n',W_ratio)

//  End
