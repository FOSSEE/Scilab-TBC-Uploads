clear;
clc;
disp('Example 5.19')

//  aim : To determine the 
//  (a) Gamma,
//  (b) del_U

//  Given Values
P1 = 1400;//  [kN/m^2]
P2 = 100;//  [kN/m^2]
P3 = 220;//  [kN/m^2]
T1 = 273+360;//  [K]
m = .23;// [kg]
cp = 1.005;//  [kJ/kg*K]

//  Solution
T3 = T1;//  since process 1-3 is isothermal

//  (a)
//  for process 1-3, P1*V1=P3*V3,so
V3_by_V1 = P1/P3;
//  also process 1-2 is adiabatic,so P1*V1^(Gamma)=P2*V2^(Gamma),hence
//  and process process 2-3 is iso-choric so,V3=V2 and
V2_by_V1 = V3_by_V1;
//  hence,
Gamma = log(P1/P2)/log(P1/P3); //  heat capacity ratio

mprintf('\n (a) The value of adiabatic index Gamma is  =  %f\n',Gamma);

//  (b)
cv = cp/Gamma;//  [kJ/kg K]
//  for process 2-3,P3/T3=P2/T2,so
T2 = P2*T3/P3;//  [K]

//   now
del_U = m*cv*(T2-T1);//  [kJ]
mprintf('\n (b) The change in internal energy during the adiabatic expansion is U2-U1 =  %f kJ (This is loss of internal energy)\n',del_U);
//   End
