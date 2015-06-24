clear;
clc;

//Example - 10.3
//Page number - 334
printf("Example - 10.3 and Page number - 334\n\n");

//Given
n = 100;//[mol] - No of moles
T_1 = 600;//[K] - Initial temperature
T_2 = 300;//[K] - Final temperature
P_1 = 10;//[atm] - Initial pressure
P_1 = P_1*101325;//[Pa]
P_2 = 5;//[atm] - Final presssure
P_2 = P_2*101325;//[Pa]
Tc = 369.8;//[K] - Critical temperature
Pc = 42.48;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
w = 0.152;
R = 8.314;//[J/mol*K] - Universal gas constant

// At 600 K
Tr = T_1/Tc;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B = ((B_0 + (w*B_1))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient
dB0_dT = 0.422*1.6*Tc^(1.6)*T_1^(-2.6);// (dB_0/dT)
dB1_dT = 0.172*4.2*Tc^(4.2)*T_1^(-5.2);// (dB_1/dT)
dB_dT = ((R*Tc)/(Pc))*(dB0_dT + w*dB1_dT);// dB/dT

// Now let us calculate B and dB/dT at 300 K
Tr_prime = T_2/Tc;// Reduced temperature
B_0_prime = 0.083-(0.422/(Tr_prime)^(1.6));
B_1_prime = 0.139-(0.172/(Tr_prime)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0 + (w*B_1)
B_prime = ((B_0_prime + (w*B_1_prime))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient
dB0_dT_prime = 0.422*1.6*Tc^(1.6)*T_2^(-2.6);// (dB_0/dT)
dB1_dT_prime = 0.172*4.2*Tc^(4.2)*T_2^(-5.2);// (dB_1/dT)
dB_dT_prime = ((R*Tc)/(Pc))*(dB0_dT_prime + w*dB1_dT_prime);// dB/dT

// The change in enthalpy for ideal gas is given by
delta_H_ig = integrate('-0.966+7.279*10^(-2)*T-3.755*10^(-5)*T^(2)+7.58*10^(-9)*T^(3)','T',T_1,T_2);//[cal/mol]
delta_H_ig = delta_H_ig*4.184;//[J/mol]

// We know that delta_H_ig = delta_U_ig + R*delta_T. Therefore change in internal energy is given by 
delta_U_ig = delta_H_ig - R*(T_2 - T_1);//[J/mol]

// The change in entropy of ideal gas is given by 
//delta_S_ig = integrate('Cp_0/T','T',T_1,T_2) - R*log(P_2/P_1);
delta_S_ig = integrate('(-0.966+7.279*10^(-2)*T-3.755*10^(-5)*T^(2)+7.58*10^(-9)*T^(3))/T','T',T_1,T_2)*4.184 - R*log(P_2/P_1);// [J/mol-K]

// Now let us calculate the change in enthalpy of gas. We know that
// delta_H = delta_H_ig + delta_H_R
// delta_H_R = H_2_R - H_1_R
H_2_R = B_prime*P_2 - P_2*T_2*dB_dT_prime;// [J/mol]
H_1_R = B*P_1 - P_1*T_1*dB_dT;// [J/mol]
delta_H_R = H_2_R - H_1_R;// [J/mol]
delta_H = delta_H_ig + delta_H_R;// [J/mol]

// Let us calculate the residual entropy of gas
S_2_R = -P_2*dB_dT_prime;//[J/mol-K]
S_1_R = -P_1*dB_dT;//[J/mol-K]
delta_S = delta_S_ig + (S_2_R - S_1_R);//[J/mol-K]

// Let us calculate the residual internal energy of gas
U_2_R = -P_2*T_2*dB_dT_prime;//[J/mol-K]
U_1_R = -P_1*T_1*dB_dT;//[J/mol-K]
delta_U = delta_U_ig + (U_2_R - U_1_R);//[J/mol-K]

// For 100 mol sample,
delta_H_ig = delta_H_ig*n*10^(-3);//[kJ/mol]
delta_H = delta_H*n*10^(-3);//[kJ/mol]

delta_U_ig = delta_U_ig*n*10^(-3);//[kJ/mol]
delta_U = delta_U*n*10^(-3);//[kJ/mol]

delta_S_ig = delta_S_ig*n*10^(-3);//[kJ/mol]
delta_S = delta_S*n*10^(-3);//[kJ/mol]

printf(" The value of delta_H = %f kJ/mol\n",delta_H);
printf(" The value of delta_H_ig (ideal gas)= %f kJ/mol\n\n",delta_H_ig);
printf(" The value of delta_U = %f kJ/mol\n",delta_U);
printf(" The value of delta_U_ig (ideal gas) = %f kJ/mol\n\n",delta_U_ig);
printf(" The value of delta_S = %f kJ/mol\n",delta_S);
printf(" The value of delta_S_ig (ideal gas) = %f kJ/mol\n\n",delta_S_ig);


