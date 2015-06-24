clear;
clc;

//Example - 4.1 
//Page number - 148
printf("Example - 4.1 and Page number - 148\n\n");

// Given
T = 400;//[K] - Temperature
P_1 = 500*10^(3);//[Pa] - Initial pressure
P_2 = 100*10^(3);//[Pa] -  Final pressure
V_1 = 750*10^(-6);//[m^(3)] - Initial volume
W_actual = 0.55*10^(3);//[J] - Actual work done
R = 8.314;//[J/mol*K] - Universal fas constant

// Suppose that the surroundings are at 400 K.
// Therefore the process is externally reversible as temperature of the surroundings is same as system temperature.
// The number of moles is given by
n = (P_1*V_1)/(R*T);//[mol]
// The entropy change of ideal gas under isothermal condition is given by
delta_S_sys = - n*R*log(P_2/P_1);//[J/mol]

// The heat supplied to the system in the internally reversible process is
Q_theot = T*delta_S_sys;//[J]
// Since the process is isothermal therefore, workdone is given by
W_theot = Q_theot;//[J] - Theoritical work done
// Since actual work done by the gas is 0.55 kJ therefore actual heat supplied is also 0.55 kJ because under isothermal conditions delta_U = 0
Q_actual = W_actual;

// Since Q_theot > Q_actual, so the process is irreversible
printf(" Since, Q_theot = %f J  is greater than  Q_actual = %f J\n",Q_theot,Q_actual);
printf(" Therefore,the process is internally irreversible");

// Moreover delta_S_sys is same whether the process is reversible or irreversible as the initial and final states is the same.
// In the reversible process higher amount of heat is supplied (as compared to irreversible) due to which delta_S_sys take place.
// In the irreversible process the entropy of system increases due two reasons : heat supplied and entropy generation
// So in the irreversible case amount of heat supplied is less as compared to reversible case as entropy generation term also adds to the entropy change of system
// delta_S_sys = Q/T_b + S_gen
S_gen = delta_S_sys - (Q_theot/T);//[J/K]
// The entropy generated may be due to friction and other dissipayive effects or due to non-quasi-static expansion



