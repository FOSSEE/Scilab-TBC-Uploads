clear;
clc;

//Example - 7.26
//Page number - 260
printf("Example - 7.26 and Page number - 260\n\n");

// Given
P_1 = 150;//[bar]
P_2 = 1;//[bar]

T_1 = 300;//[K]
T_2 = 260;//[K]
T_3 = 280;//[K]
T_4 = 200;//[K]
T_5 = 120;//[K]
T_6 = 140;//[K]

H_P1_T1 = 271.8;//[kJ/kg]
H_P2_T2 = 260.0;//[kJ/kg] 
H_P2_T3 = 280.2;//[kJ/kg]
H_P1_T4 = 129.2;//[kJ/kg]
H_P2_T5 = 118.8;//[kJ/kg]
H_P2_T6 = 139.1;//[kJ/kg]

//(a)
// During the Joule-Thomson expansion the enthalpy should remain constant
// Therefore at 1 bar the exit temperature is such that enthalpy is 271.8 kJ/kg
// The temperature at which enthalpy is 271.8 kJ/kg is given by,
T_new = ((H_P1_T1 - H_P2_T2)/(H_P2_T3 - H_P2_T2))*(T_3 - T_2) + T_2;//[K]

// Therefore Joule-Thomson coefficient is given by,
meu = (T_1 - T_new)/(P_1 - P_2);//[K/bar]

printf(" (a).The value of Joule-Thomson coefficient (for initial T = 300 K) is %f J/bar\n",meu);

//(b)
// During the Joule-Thomson expansion the enthalpy should remain constant
// Therefore at 1 bar the exit temperature is such that enthalpy is 129.2 kJ/kg
// The temperature at which enthalpy is 129.2 kJ/kg is given by,
T_new_prime = ((H_P1_T4 - H_P2_T5)/(H_P2_T6 - H_P2_T5))*(T_6 - T_5) + T_5;//[K]

// Therefore Joule-Thomson coefficient is given by,
meu_prime = (T_4 - T_new_prime)/(P_1 - P_2);//[K/bar]

printf(" (b).The value of Joule-Thomson coefficient (for initial T = 200 K) is %f J/bar",meu_prime);

// Therefore the Joule-Thomson coefficient is higher for low initial temperatures and therefore the drop in temperature is more.

