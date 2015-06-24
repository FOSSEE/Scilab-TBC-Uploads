clear;
clc;
disp('Example 5.21');

//  aim : To determine the
//  (a) work transferred during the compression
//  (b) change in internal energy
//  (c) heat transferred during the compression

//  Given values
V1 = .1;//  initial volume, [m^3]
P1 = 120;//  initial pressure, [kN/m^2]
P2 = 1200; // final pressure, [kN/m^2]
T1 = 273+25;//  initial temperature, [K]
cv = .72;//  [kJ/kg*K]
R = .285;//  [kJ/kg*K]

//  solution

//  (a)
//  given process is polytropic with
n = 1.2;  // polytropic index
//  hence
V2 = V1*(P1/P2)^(1/n);//  [m^3]
W = (P1*V1-P2*V2)/(n-1);//  workdone formula, [kJ]
mprintf('\n (a) The work transferred during the compression is  =  %f  kJ\n',W);

//  (b)
//  now mass is constant so,
T2 = P2*V2*T1/(P1*V1);//  [K]
//  using, P*V=m*R*T
m = P1*V1/(R*T1);//  [kg]

//  change in internal energy is
del_U = m*cv*(T2-T1);//  [kJ]
mprintf('\n (b) The change in internal energy is  =  %f  kJ\n',del_U);

//  (c)
Q = del_U+W;//  [kJ]
mprintf('\n (c) The heat transferred during the compression is  =  %f  kJ\n',Q);

//  End

