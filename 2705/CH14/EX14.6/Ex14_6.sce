clear;
clc;
disp(' Example 14.6');

// aim : To determine 
//  the power required to drive the blower

// given values
m_dot = 1;// air capacity, [kg/s]
rp = 2;// pressure ratio
P1 = 1*10^5;// intake pressure, [N/m^2]
T1 = 273+70;// intake temperature, [K]
R = .29;// gas constant, [kJ/kg k]

// solution
V1_dot = m_dot*R*T1/P1*10^3;// [m^3/s]
P2 = rp*P1;// final pressure, [n/m^2]
P = V1_dot*(P2-P1);// power required, [W]
mprintf('\n The power required to drive the blower is  =  %f kW\n',P*10^-3);

// End
