clear;
clc;
disp('Example 5.18');

//  aim : To determine the
//  (a) final pressure
//   (b) final dryness fraction of the steam

//  Given values
P1 = 130;//  initial pressure, [kN/m^2]
T1 = 273+75.9;//  initial temperature, [K]
x1 = .92;//  initial dryness fraction
T2 = 273+120.2;//  final temperature, [K]

//  solution

//  (a)
//  from steam table, at 75.9 C
Pws = 40;//  partial pressure of wet steam[kN/m^2]
Pa = P1-Pws;//  partial pressure of air, [kN/m^2]
vg = 3.99//  specific volume of the wet steam, [m^3/kg]
// hence
V1 = x1*vg;//  [m^3/kg]
V2 = V1/5;//  [m^3/kg]
//  for air, mass is constant so, Pa*V1/T1=P2*V2/T2,also given ,V1/V2=5,so
P2 = Pa*V1*T2/(V2*T1);//  final pressure,[kN/m^2]

//  now for steam at 120.2 C
Ps = 200;//  final partial pressure of steam,[kN/m^2]
//  so by dalton's law total pressure in cylindert is
Pt = P2+Ps;//  [kN/m^2]
mprintf('\n (a) The final pressure in the cylinder is  =  %f  kN/m^2\n',Pt);

//  (b)
//  from steam table at 200 kN/m^2 
vg = .885;//  [m^3/kg]
//  hence
x2 = V2/vg;//  final dryness fraction of the steam
mprintf('\n (b) The final dryness fraction of the steam is  =  %f\n ',x2);

//  End
