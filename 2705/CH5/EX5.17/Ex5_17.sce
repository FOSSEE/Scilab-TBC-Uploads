clear;
clc;
disp('Example 5.17');

//  aim : To determine 
//  the partial pressure of the air and steam, and the mass of the air

//  Given values
P1 = 660;//  vaccum gauge pressure on condenser [mmHg]
P = 765;//  atmospheric pressure, [mmHg]
x = .8;//  dryness fraction 
T = 273+41.5;//  temperature,[K]
ms_dot = 1500;//  condense rate of steam,[kg/h]
R = .29;//  [kJ/kg]

//  solution
Pa = (P-P1)*.1334;// absolute pressure,[kN/m^2]
// from steam table, at 41.5 C partial pressure of steam is
Ps = 8;//  [kN/m^2]
//  by dalton's law, partial pressure of air is
Pg = Pa-Ps;//  [kN/m^2]

mprintf('\n The partial pressure of the air in the condenser is  =  %f  kN/m^2\n',Pg);
mprintf('\n The partial pressure of the steam in the condenser is  =  %f kN/m^2\n',Ps);

//  also
vg = 18.1;//  [m^3/kg]
//  so
V = x*vg;//  [m^3/kg]
//  The air associated with 1 kg of the steam will occupiy this same volume
//  for air, Pg*V=m*R*T,so
m = Pg*V/(R*T);//  [kg/kg steam]
//  hence
ma = m*ms_dot;//  [kg/h]

mprintf('\n The mass of air which will associated with this steam is  =  %f  kg\n',ma);

// There is misprint in book

//  End
