clear;
clc;
disp('Example 19.2');

// aim : To determine
// (a) the partial pressures of the vapor and the dry air
// (b) the specific humidity of the mixture
// (c) the composition of the mixture

//  Given values
phi = .65;// Relative humidity
T = 2733+20;// temperature, [K]
p = 100;// barometric pressure, [kN/m^2]

// solution
// (a)
//  From the steam table at 20 C
pg = 2.34;// [kN/m^2]
ps = phi*pg;// partial pressure of vapor, [kN/m^2]
pa = p-ps;// partial pressure of dry air, [kN/m^2]
mprintf('\n (a) The partial pressure of vapor is  =  %f  kN/m^2\n',ps);
mprintf('\n     The partial pressure of dry air is  =  %f kN/m^2\n',pa);

// (b)
// from equation [15]
omega = .622*ps/(p-ps);// specific humidity of the mixture
mprintf('\n (b) The specific humidity of the mixture is  =  %f kg/kg dry air\n',omega);

// (c)
// using eqn [1] from section 19.2
y = 1/(1+omega);// composition of the mixture
mprintf('\n (c) The composition of the mixture is  =  %f\n',y);

// End
