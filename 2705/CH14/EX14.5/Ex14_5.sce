clear;
clc;
disp(' Example 14.5');

// aim : To determine 
//  the power absorbed in driving the compressor

// given values
FC = .68;// fuel consumption rate, [kg/min]
P1 = 93;// initial pressure, [kN/m^2]
P2 = 200;// final pressure, [kN/m^2]
T1 = 273+15;// initial temperature, [K]
d = 1.3;// density of mixture, [kg/m^3]
n_com = .82;// isentropic efficiency of compressor
Gama = 1.38;// heat capacity ratio

// solution
R = P1/(d*T1);// gas constant, [kJ/kg K]
// for mixture
cp = Gama*R/(Gama-1);// heat capacity, [kJ/kg K]
T2_prim = T1*(P2/P1)^((Gama-1)/Gama);// temperature after compression, [K]
// using isentropic efficiency=(T2_prim-T1)/(T2-T1)
T2 = T1+(T2_prim-T1)/n_com;//  final temperature, [K]
m_dot = FC*15/60;// given condition, [kg/s]
P = m_dot*cp*(T2-T1);// power absorbed by compressor, [kW]
mprintf('\n The power absorbed by compressor is  =  %f kW\n',P);

// End
