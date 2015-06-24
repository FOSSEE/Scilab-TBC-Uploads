clear;
clc;
disp('Example 5.6');

//  aim : To determine
//  the mas of the gas and new temperature

//  Given values
P1 = 350;//  [kN/m^2]
V1 = .03;//  [m^3]
T1 = 273+35;//  [K]
R = .29;//  Gas constant,[kJ/kg K]

//  solution
//  using charasteristic equation, P*V=m*R*T
m = P1*V1/(R*T1);//  [Kg]
mprintf('\n The mass of the gas present is  =  %f kg\n',m);

//  Now the gas is compressed
P2 = 1050;//  [kN/m^2]
V2 = V1;
// since mass of the gas is constant so using, P*V/T=constant
//  hence
T2 = T1*P2/P1//  [K]
t2 = T2-273;//  [C]

mprintf('\n The new temperature of the gas is  =  %f  C\n',t2);

//  End
