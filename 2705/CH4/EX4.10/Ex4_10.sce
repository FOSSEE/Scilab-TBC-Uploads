clear;
clc;
disp('Example .10');

// aim : To determine
// (a) the mass of steam entering the heater
// (b) the mass of water entering the heater

//  Given values
x = .95;//  Dryness fraction
P = .7;//  pressure,[MN/m^2]
d = 25;//  internal diameter of heater,[mm]
C = 12; //  steam velocity in the pipe,[m/s]

//  solution
//  from steam table at .7 MN/m^2 pressure
hf = 697.1;//  [kJ/kg]
hfg = 2064.9;//  [kJ/kg]
hg = 2762.0; //  [kJ/kg]
vg = .273; //  [m^3/kg]

//  (a)
v = x*vg; //  [m^3/kg]
ms_dot = %pi*(d*10^-3)^2*C*3600/(4*v);//  mass of steam entering, [kg/h]
mprintf('\n (a) The mass of steam entering the heater is  =  %f kg/h \n',ms_dot);

//  (b)
h = hf+x*hfg;//  specific enthalpy of steam entering heater,[kJ/kg]
//  again from steam tables
hf1 = 376.8;//  [kJ/kg] at 90 C
hf2 = 79.8;//  [kJ/kg] at 19 C

//  using energy balance,mw_dot*(hf1-hf2)=ms_dot*(h-hf1)
mw_dot = ms_dot*(h-hf1)/(hf1-hf2);//  mass of water entering to heater,[kg/h]

mprintf('\n (b) The mass of water entering the heater is  =   %f  kg/h \n',mw_dot);

//  End
