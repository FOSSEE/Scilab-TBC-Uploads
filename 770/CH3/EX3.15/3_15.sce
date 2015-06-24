clear;
clc;

//Example - 3.15
//Page number - 106
printf("Example - 3.15 and Page number - 106\n\n");

//Given
T_1 = 1000;//[K] - Temperature at entry
P_1 = 0.6;//[MPa] - Pressure at entry
P_2 = 0.2;//[MPa] - Exit pressure
Vel_1 = 50;//[m/s] - Entry velocity 
Y = 1.4;// Ratio of heat capacities
Mol_wt = 28;//[g/mol] - Molecular weight of air
Cp = 29.099;//[J/mol-K] - Specific heat capacity at constant pressure
Cp = (Cp/Mol_wt)*1000;//[J/kg-K]

// We know that for a flow process 
// delta_H + delta_V^(2)/2 + delta_(g*z) = q - w
// Since process is adiabatic,therefore q = 0 and since no work is done by the gas, therefore w = 0
// Assuming there is no change in the potenial energy between entry and exit, we have
// delta_H + delta_V^(2)/2 = 0

// For a reversible process P*V^(Y) = constant and thus (T_2/T_1) = (P_2/P_1)^((Y-1)/Y)
T_2 = T_1*(P_2/P_1)^((Y-1)/Y);//[K] - Exit temperature

// delta_H + delta_V^(2)/2 = 0
// Vel_2^(2)/2 - Vel_1^(2)/2 - (H_1 - H_2)= 0
// Vel_2^(2)/2 - Vel_1^(2)/2 - Cp*(T_1 - T_2) = 0
Vel_2_square = 2*(Vel_1^(2)/2 + Cp*(T_1 - T_2));//[m^(2)/s^(2)]
Vel_2 = (Vel_2_square)^(1/2);//[m/s]

printf(" The discharge velocity is %f m/s\n",Vel_2);


