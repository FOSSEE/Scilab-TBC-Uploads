clear;
clc;

// Illustration 11.8
// Page: 627

printf('Illustration 11.8 - Page: 627\n\n');

// Solution

//******Data******//
rate = 0.1;// [kg/s]
conc = 3;// [kg vapour/100cubic m]
Density_p = 720;// [kg/cubic m]
Density_bed = 480;// [kg/cubic m]
capablity = 0.45;// [kg vapour/kg carbon]
dp = 0.0028;// [m]
time = 3;// [h]
//********************//

Vap_adsorbed = time*3600*rate;// [kg]
C_required = Vap_adsorbed/capablity;
// Two beds will be needed: one adsorbing and another regenerated.
totC_required = 2*C_required;// [kg]
printf("Amount of caron required: %d kg\n",totC_required);
Vol = (C_required/Density_bed);
// Assume:
Z = 0.5;// [m]
Area = Vol/Z;// [square m]
// From Eqn. 6.66:
T = 35;// [OC]
viscosity_air = 1.82*10^(-5);// [kg/m.s]
Density_air = (29/22.41)*(273/(T+273));
e = 1-(Density_bed/Density_p);
G = rate*(100/conc)*(Density_air/(Area));// [kg/square m.s]
Re = dp*G/viscosity_air;
Z = 0.5;// [m]
deff('[y] = f78(delta_p)','y = ((delta_p/Z)*(e^3*dp*Density_air)/((1-e)*G^2))-(150*(1-e)/Re)-1.75');
delta_p = fsolve(7,f78);
printf("The pressure drop is: %f N/square m\n",delta_p);