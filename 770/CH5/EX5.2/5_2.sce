clear;
clc;

//Example - 5.2
//Page number - 188
printf("Example - 5.2 and Page number - 188\n\n");

//Given
T_1 = 300;//[K] - Initial temperature.
P_1 = 100;//[kPa] - Initial pressure.
T_2 = 500;//[K] - Final temperature.
T_0 = 300;//[K] - Environment temperature.
P_0 = 1;//[atm] - Environment pressure.
R = 8.314;//[J/mol*K]
//(Cp_0/R)= 3.626
Cp_0 = 3.626*R;//[J/mol-K] - Heat capacity at constant pressure


//(1).
//The availability change is given by, (phi_1 - phi_2) = U_1 - U_2 + P_0*(V_1 - V_2) - T_0*(S_1 - S_2)
//Let us determine the change in internal energy
//For ideal gas the molar internal energy change is given by  delta_U = Cv_0*(T_2-T_1)
//For ideal gas Cp_0 - Cv_0 = R, and therefore
Cv_0 = ((Cp_0/R)- 1)*R;//[J/mol-K] - Heat capacity at constant volume
delta_U = Cv_0*(T_2-T_1);//[J/mol]
//delta_U = -w (from energy balance). Therefore, U1-U2 = -delta_U.
//The entropy change of ideal gas is given by
//delta_S = Cp_0*log(T_2/T_1) - R*log(P_2/P_1), but,(P1*V1/T1) = (P1*V1/T1) and therefore (P2/P1) = (T2/T1)
delta_S = Cp_0*log(T_2/T_1) - R*log(T_2/T_1);//[J/mol-K]
//The exergy change is given by, (phi_1 - phi_2) = U_1 - U_2 + P_0*(V_1 - V_2) - T_0*(S_1 - S_2)
//(V_1 - V_2) = 0, because the tank is rigid and so the volume is constant
delta_phi = (-delta_U) - T_0*(-delta_S);//[J/mol]
printf(" (1).The change in exergy is %f J/mol\n\n",delta_phi);

//(2).
//Entropy change of the system is given by,  delta_S_sys = q/T_b + S_gen
//Since the system is adiabatic therefore,  delta_S_sys = S_gen
S_gen = delta_S;
//Irreversibility is given by
i = T_0*S_gen;//[J/mol]
printf(" (2).The value of irreversibility is %f J/mol",i);
//Irreversibility can also be determined using
//i = (W_rev_use - W_use)

