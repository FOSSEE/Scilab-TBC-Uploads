// Example 14.4 To determine thermal resistance, junction temperature 
// Consider BJT with following  specifications
P_D0=2; // Maximum power dissipation (W)
T_A0=25; // Ambient temperature (degree celcius)
T_Jmax=150; // maximum junction temperature (degree celcius) 

// 14.4a 
theta_JA=(T_Jmax-T_A0)/P_D0; // Thermal resistance
disp(theta_JA,"The thermal resistance (degree celsius/W)")

// 14.4b
T_A=50; // (degree celcius)
P_Dmax=(T_Jmax-T_A)/theta_JA; 
disp(P_Dmax,"Maximum power that can be dissipated at an ambient temperature of 50 degree celsius (W)")

// 14.4c
T_A=25; // (degree celcius) 
P_D=1; // (W)
T_J=T_A+theta_JA*P_D;
disp(T_J,"Junction temperature (degree celcius) if the device is operating at T_A=25 degree celsius and is dissipating 1W")