clear;
clc;
disp('Example 13.5');

// aim : To determine
// (a) the blade height of the stage
// (b) the power developed in the stage
// (c) the specific enthalpy drop at the stage

// given values
U = 60;// mean blade speed, [m/s]
P = 350;// steam pressure, [kN/m^2]
T = 175;// steam temperature, [C]
nai = 30;// stage inlet angle, [degree]
nae = 20;// stage exit angle, [degree] 

// solution
// (a)
m_dot = 13.5;// steam flow rate, [kg/s]
// at given T and P
v = .589;// specific volume, [m^3/kg]
// given H=d/10, so
H = sqrt(m_dot*v/(%pi*10*60));// blade height, [m]
mprintf('\n (a) The blade height at this stage is  =  %f  mm\n',H*10^3);

// (b)
Cwi_plus_Cwe = 270;// change in whirl speed, [m/s]
P = m_dot*U*(Cwi_plus_Cwe);// power developed, [W]
mprintf('\n (b) The power developed is  =  %f  kW\n',P*10^-3);

// (c)
s = .85;// stage efficiency
h = U*Cwi_plus_Cwe/s;// specific enthalpy,[J/kg]
mprintf('\n (a) The specific enthalpy drop in the stage is  =  %f  kJ/kg',h*10^-3);

//  End
