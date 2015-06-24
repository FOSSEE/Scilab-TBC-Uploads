clear;
clc;

//Example - 4.16
//Page number - 169
printf("Example - 4.16 and Page number - 169\n\n");

//Given
P_1 = 300;//[kPa] - Initial pressure
T_1 = 450;//[K] - Initial temperature
Vel_1 = 90;//[m/s] - Initial velocity
P_2 = 180;//[kPa] - Final pressure
eff = 0.95;// Adiabatic effciciency of the nozzle
R = 8.314;//[J/mol*-] - Universal gas constant
Cp = 5.19;//[kJ/kg-K] - Specific heat capacity at constant pressure

//(a)
// Exit velocity is highest when drop in enthalpy is highest or when isentropic conditions are maintained

Mol_wt_He = 4;//[g/mol] - Molecular weight of helium
R_He = R/Mol_wt_He;// 'R' for helium
Y = Cp/(Cp - R_He);

// Now temperature at exit to be determined
T_2s = T_1*(P_1/P_2)^((1-Y)/Y);//[K]
delta_H_2s = Cp*(T_2s - T_1);//[kJ/kg]

// Since no work is done and heat exchange is zero,from first law we get
// delta_H + delta_Vel^(2)/2 = 0
delta_Vel_square = 2*(-delta_H_2s)*1000;//[m^(2)/s^(2)]
Vel_2 = (delta_Vel_square)^(1/2);//[m/s] - ( as Vel_1  <<  Vel_2)

printf(" (a).The maximum exit velocity is %f m/s\n\n",Vel_2);

//(b)
T_2a = 373;//[K] - Measured temperature of helium
delta_H_a = Cp*(T_2a - T_1);//[kJ/kg]
delta_Vel_square_a = 2*(-delta_H_a)*1000;//[m^(2)/s^(2)]
Vel_2a = (delta_Vel_square_a)^(1/2);//[m/s] - ( as Vel_1  <<  Vel_2a)

printf(" (b).The actual exit velocity is %f m/s\n\n",Vel_2a);

//(c)
delta_S_sys = Cp*log(T_2a/T_1) - R_He*log(P_2/P_1);
// we know that delta_S_sys = q/T_b + S_gen and since q = 0, therfore
S_gen = delta_S_sys;//[kJ/kg-K]

printf(" (c).The increasse in entropy per unit mass is %f kJ/kg-K",S_gen);

// The source of irreversibility is friction in the nozzle.

