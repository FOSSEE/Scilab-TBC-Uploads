clear
//
// Variable declaration
T_e=3// The evaporating temperature in °C
T_in=20// The temperature of air entering coil in °C
T_out=11// The temperature of air off coil at full air flow in °C
T_c=35// The condensing temperature in °C
af=(1-0.15)// The reduced air flow 

// Calculation
LMTD=((T_in-T_e)-(T_out-T_e))/log((T_in-T_e)/(T_out-T_e))// K
T_aoff=T_in-(T_in-T_out)/af// Air off coil at 85% air flow (°C)
Cp=(af)**0.8// Coil performance at 85% air flow (°C)
LMTD_85=LMTD/Cp// LMTD at 85% air flow in K
printf("\n \n LMTD at 85 percentage air flow=%2.1f K(error)",LMTD_85)
