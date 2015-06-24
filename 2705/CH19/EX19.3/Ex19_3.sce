clear;
clc;
disp('Example 19.3');

// aim : To determine
// (a) the specific humidity
// (b) the dew point
// (c) the degree of superheat of the superheated vapor
// (d) the mass of condensate formed per kg of dry air if the moist air is cooled to 12 C

// Given values
t = 25;// C
T = 273+25;// moist air temperature, [K]
phi = .6;// relative humidity
p = 101.3;// barometric pressure, [kN/m^2]
R = .287;// [kJ/kg K]

// solution
// (a)
// From steam table at 25 C
pg = 3.17;// [kN/m^2]
ps = phi*pg;// partial pressure of the vapor, [kN/m^2]
omega = .622*ps/(p-ps);// the specific humidity of air

mprintf('\n (a) The specific humidity is  =  %f  kg/kg air\n',omega);

// (b)
// Dew point is saturated temperature at ps is,
t_dew = 16+2*(1.092-1.817)/(2.062-1.817);// [C]
mprintf('\n (b) The dew point is  =  %f C\n',t_dew);

// (c)
Dos = t-t_dew;// degree of superheat, [C]
mprintf('\n (c) The degree of superheat is  =  %f C\n',Dos);

// (d)
// at 25 C
pa = p-ps;// [kN/m^2]
va = R*T/pa;// [m^3/kg]
// at 16.69 C
vg = 73.4-(73.4-65.1)*.69/2;// [m^3/kg]
ms1= va/vg; 
// at 12 C
vg = 93.8;// [m^3/kg]
ms2 = va/vg;

m = ms1-ms2;// mas of condensate
mprintf('\n (d) The mass of condensate is  =  %f  kg/kg dry air\n',m);

//  there is calculation mistake in the book so answer is no matching

//  End
