clear;
clc;
disp('Example 5.20');

//  aim : To determine 
//  the mass of oxygen and heat transferred

//  Given values
V1 = 300;//  [L]
P1 = 3.1;//  [MN/m^2]
T1 = 273+18;//  [K]
P2 = 1.7;//  [MN/m^2]
T2 = 273+15;//  [K]
Gamma = 1.4; //  heat capacity ratio
//  density condition
P = .101325;// [MN/m^2]
T = 273;// [K]
V = 1;//  [m^3]
m = 1.429;// [kg]

//  hence
R = P*V*10^3/(m*T);//  [kJ/kg*K]
//  since volume is constant
V2 = V1;// [L]
//  for the initial conditions in the cylinder,P1*V1=m1*R*T1
m1 = P1*V1/(R*T1);//  [kg]

// after some of the gas is used
m2 = P2*V2/(R*T2);//  [kg]
//  The mass of oxygen remaining in cylinder is m2 kg,so
//  Mass of oxygen used is
m_used = m1-m2;//  [kg]
mprintf('\n The mass of oxygen used  =  %f kg\n',m_used);

//  for non-flow process,Q=del_U+W
//  volume is constant so no external work is done so,Q=del_U
cv = R/(Gamma-1);//  [kJ/kg*K]

//  heat transfer is
Q = m2*cv*(T1-T2);//  (kJ)
mprintf('\n The amount of heat transferred through the cylinder wall is  =  %f kJ\n',Q);

//  End
