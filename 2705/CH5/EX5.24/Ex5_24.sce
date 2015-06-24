clear;
clc;
disp('Example 5.24');

//  aim : To determine the
//  (a) work transfer,
//  (b)del_U  and,
//  (c)heat transfer

//  Given values
V1 = .15;//  [m^3]
P1 = 1200;//  [kN/m^2]
T1 = 273+120;// [K]
P2 = 200;//  [kN/m^2]
cp = 1.006;//[kJ/kg K]
cv = .717;//  [kJ/kg K]

//  solution

//  (a)
//  Given, PV^1.32=constant, so it is polytropic process with
n = 1.32;//  polytropic index
// hence
V2 = V1*(P1/P2)^(1/n);//  [m^3]
//  now, W
W = (P1*V1-P2*V2)/(n-1);// [kJ]
mprintf('\n (a) The work transfer is W  =  %f kJ\n',W);

//  (b)
R = cp-cv;//  [kJ/kg K]
m = P1*V1/(R*T1);//  gas law,[kg]
//  also for polytropic process
T2 = T1*(P2/P1)^((n-1)/n);//  [K]
//  now for gas,
del_U = m*cv*(T2-T1);//  [kJ]
mprintf('\n (b) The change of internal energy is del_U =  %f kJ\n',del_U);

//  (c)
Q = del_U+W;//  first law of thermodynamics,[kJ]
mprintf('\n (c) The heat transfer Q  =  %f kJ\n',Q);

//  End
