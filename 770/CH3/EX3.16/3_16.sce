clear;
clc;

//Example - 3.16
//Page number - 107
printf("Example - 3.16 and Page number - 107\n\n");

//Given
P_entry = 10;//[bar] - Pressure at entry
V_entry = 200;//[m/s] - Velocity at entry
P_exit = 1;//[bar] - Vressure at exit
V_exit = 800;//[m/s] - Velocity at exit
g = 9.81;//[m/s^(2)] - Acceleration due to gravity

//Heat balance gives
// delta_H + (delta_V^(2))/2 + g*delta_z = q - w
//delta_H = q - w - (delta_V^(2))/2 
//From nozzle no work is extracted,therefore
delta_H = -(V_exit^(2)- V_entry^(2))/2;//[J/kg]
delta_H = delta_H*10^(-3);//[kJ/kg]

printf(" The change in enthalpy per kg of steam is %f kJ/kg",delta_H);