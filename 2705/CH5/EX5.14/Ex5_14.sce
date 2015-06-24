clear;
clc;
disp('Example 5.14');

//  aim : To determine the
//  (a)heat transfer
//  (b)change of internal energy
//  (c)mass of gas

//   Given values
V1 = .4;//  initial volume, [m^3]
P1 = 100;//  initial pressure, [kN/m^2]
T1 = 273+20;//  temperature, [K]
P2 = 450;//  final pressure,[kN/m^2]
cp = 1.0;//  [kJ/kg K]
Gamma = 1.4; //  heat capacity ratio

//  solution

//  (a)
//  for the isothermal compression,P*V=constant,so
V2 = V1*P1/P2;//  [m^3]
W = P1*V1*log(P1/P2);//  formula of workdone for isothermal process,[kJ]

//  for isothermal process, del_U=0;so
Q = W;
mprintf('\n (a) The heat transferred during compression is Q  =  %f kJ\n',Q);


//  (b)
V3 = V1;
//  for adiabatic expansion
//  also

P3 = P2*(V2/V3)^Gamma;//  [kN/m^2]
W = -(P3*V3-P2*V2)/(Gamma-1);//  work done formula for adiabatic process,[kJ]
//  also, Q=0,so using Q=del_U+W
del_U = -W;//  [kJ]
mprintf('\n (b) The change of the internal energy during the expansion is,del_U  =  %f kJ\n',del_U);

//  (c)
//  for ideal gas
//  cp-cv=R, and cp/cv=gamma, hence
R = cp*(1-1/Gamma);//  [kj/kg K]

//  now using ideal gas equation
m = P1*V1/(R*T1);//  mass of the gas,[kg]
mprintf('\n (c) The mass of the gas is,m  =  %f  kg\n',m);

// There is calculation mistake in the book


//  End

