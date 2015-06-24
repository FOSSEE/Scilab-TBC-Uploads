clear;
clc;

//Example - 17.11
//Page number - 611
printf("Example - 17.11 and Page number - 611\n\n");

// Given
// SO2 + (1/2)*O2 - SO3
R = 8.314;//[J/mol-K]

K_800 = 0.0319;// Equilibrium constant at 800 K
K_900 = 0.153;// Equilibrium constant at 900 K
T_1 = 800;//[K]
T_2 = 900;//[K]

// We have the relation 
// log(K_2/K_1) = -(delta_H_rkn/R)*(1/T_2 - 1/T_1)
// log(K_900/K_800) = -(delta_H_rkn_850/R)*(1/T_2 - 1/T_1)
delta_H_rkn_850 = -R*log(K_900/K_800)/(1/T_2 - 1/T_1);//[J]
delta_H_rkn_850 = delta_H_rkn_850*10^(-3);//[kJ]

printf(" The mean standard enthalpy change of reaction in the region 800 t0 900 is given by delta_H_rkn_850 = %f \n",delta_H_rkn_850);

















