clear;
clc;
disp('Example 5.23');

//  aim : T determine the
//  (a) characteristic gas constant of the gas
//  (b) cp,
//  (c) cv,
//  (d) del_u 
//  (e) work transfer

//  Given values
P = 1;//  [bar] 
T1 = 273+15;//  [K]
m = .9;//  [kg]
T2 = 273+250;//  [K]
Q = 175;//  heat transfer,[kJ]

//  solution

//  (a)
//  using, P*V=m*R*T, given,
m_by_V = 1.875;
//  hence
R = P*100/(T1*m_by_V);//  [kJ/kg*K]
mprintf('\n (a) The characteristic gas constant of the gas is R  =  %f kJ/kg K\n',R);

//  (b)
//  using, Q=m*cp*(T2-T1)
cp = Q/(m*(T2-T1));//  [kJ/kg K]
mprintf('\n (b) The specific heat capacity of the gas at constant pressure cp  =  %f kJ/kg K\n',cp);

// (c)
//  we have, cp-cv=R,so
cv = cp-R;// [kJ/kg*K]
mprintf('\n (c) The specific heat capacity of the gas at constant volume cv  =  %f  kJ/kg K\n',cv);

//  (d)
del_U = m*cv*(T2-T1);//  [kJ]
mprintf('\n (d) The change in internal energy is  =  %f kJ\n',del_U);

//  (e)
// using, Q=del_U+W
W = Q-del_U;//  [kJ]
mprintf('\n (e) The work transfer is W  =  %f kJ\n',W);

//  End
