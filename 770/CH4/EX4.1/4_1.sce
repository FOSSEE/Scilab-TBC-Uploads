clear;
clc;

//Example - 4.1 
//Page number - 148
printf("Example - 4.1 and Page number - 148\n\n");

//Given
n = 1000;//[mol]
T = 400;//[K]
P_1 = 100;//[kPa]
P_2 = 1000;//[kPa]
R = 8.314;//[J/mol*K] - Universal gas constant

//(a)
T_surr = 400;//[K] - surrounding temperature
// Total change in entropy of the system is given by
// delta_S_sys = n*(Cp_0*log(T_2/T_1) - R*log(P_2/P_1))
// The process being isothermal the first term is zero and the total entropy change of the system is
delta_S_sys_a = - n*R*log(P_2/P_1);//[J/K]
delta_S_sys_a = delta_S_sys_a*10^(-3);//[kJ/K]

// Since the process is reversible therefore
Q_sys = T_surr*delta_S_sys_a;//[kJ] - Heat change in the system
// Negative sign in the value of Q_sys implies that heat is released from the system and is released to the surroundings,therefore
Q_surr = - Q_sys;//[kJ] - Heat change in the surrounding
delta_S_surr_a = Q_surr/T_surr;//[kJ/K]

delta_S_univ_a = delta_S_sys_a + delta_S_surr_a;//[kJ/K]
// We get delta_S_univ = 0, which is true for a reversible process

printf(" (a).The entropy change of the gas is given by  delta_S_sys = %f kJ/K \n",delta_S_sys_a);
printf("     The entropy change of the surrounding is, delta_S_surr = %f kJ/K \n",delta_S_surr_a);
printf("     The total entropy change of the gas is, delta_S_univ = %f kJ/K \n\n",delta_S_univ_a);

//(b)
T_surr_b = 300;//[K] - surrounding temperature
// Since the initial and final states are fixed therefore the entropy change of the system is same whether the process is carried out reversibly or irreversibly.
delta_S_sys_b = delta_S_sys_a;

// Work done under reversible condition is given by
// W = integral(P*dV) = integral(((R*T)/V)*dV) = R*T*log(V_2/V_1)
// For ideal gas we have, P1*V1/T1 = P2*V2/T2 or, V2/V1 = P1/P2 (for isothermal conditions)
W = R*T*log(P_1/P_2);//[J/mol]
W = W*10^(-3);//[kJ/mol]
// 20% extra work has to be done for the system to reach the same final state as under reversible conditions. Therefore
W = W*(120/100);//[kJ/mol]
W = W*n;//[kJ] - Total work done for n moles

// Using the first law we have  delta_U = Q - W. Now under isothermal conditions for ideal gas, delta_U = 0. Therefore,
Q = -W;
// It implies that whatever work is done on the system is lost as heat to the surroundings.
// Since heat is gained by the surroundings therefore
delta_S_surr_b = Q/T_surr_b;//[kJ/K]

delta_S_univ_b = delta_S_sys_b + delta_S_surr_b;//[kJ/K]

printf(" (b).The entropy change of the gas is given by  delta_S_sys = %f kJ/K \n",delta_S_sys_b);
printf("     The entropy change of the surrounding is, delta_S_surr = %f kJ/K \n",delta_S_surr_b);
printf("     The total entropy change of the gas is, delta_S_univ = %f kJ/K \n\n",delta_S_univ_b);

