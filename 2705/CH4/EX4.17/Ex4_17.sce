clear;
clc;
disp('Example 4.17');

//  aim : To determine the
//  (a) mass of steam in the vessel
//  (b) final dryness of the steam
//  (c) amount of heat transferrred during the cooling process

//  Given values
V1 = .8;//  [m^3]
P1 = 360;//  [kN/m^2]
P2 = 200;//  [kN/m^2]

//  solution

//  (a)
// at 360 kN/m^2
vg1 = .510;//  [m^3]
m = V1/vg1;//  mass of steam,[kg]
mprintf('\n (a) The mass of steam in the vessel is =  %f kg\n',m);

//  (b)
//  at 200 kN/m^2
vg2 = .885;// [m^3/kg]
//  the volume remains constant so
x = vg1/vg2;// final dryness fraction
mprintf('\n (b) The final dryness fraction of the steam is  =  %f \n',x);

// (c)
//  at 360 kN/m^2
h1 = 2732.9;// [kJ/kg]
//  hence
u1 = h1-P1*vg1;//  [kJ/kg]

//  at 200 kN/m^2
hf = 504.7;// [kJ/kg]
hfg=2201.6;//[kJ/kg]
//  hence
h2 = hf+x*hfg;// [kJ/kg]
//  now
u2 = h2-P2*vg1;//  [kJ/kg]
//  so
del_u = u2-u1;//  [kJ/kg]
//  from the first law of thermodynamics del_U+W=Q, 
W = 0;//  because volume is constant
del_U = m*del_u;//  [kJ]
//  hence
Q = del_U;//  [kJ]
mprintf('\n (c) The amount of heat transferred during cooling process is  =  %f kJ \n',Q);

//  End
