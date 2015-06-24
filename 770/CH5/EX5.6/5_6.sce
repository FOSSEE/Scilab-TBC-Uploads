clear;
clc;

//Example - 5.6
//Page number - 198
printf("Example - 5.6 and Page number - 198\n\n")

//Given
P_1 = 8;//[bar] - Initial pressure
T_1 = 93 + 273.15;//[C] - Initial temperature
V_1 = 100;//[m/s] - Initial velocity
P_2 = 1.25;//[bar] - Exit pressure
T_2 = 27 + 273.15;//[C] - Exit temperature
V_2 = 60;//[m/s] - Exit velocity 
Y = 1.4;//Ratio of specific heat capacities
T_0 = 298.15;//[K] - surrounding temperature
P_0 = 1;//[bar] - surrounding pressure
R = 8.314;//[J/mol*K] - Gas constant
Cp_0 = (R*Y)/(Y-1);//[J/mol-K] - Heat capacity at constant pressure

//Since the amount of heat transfer is negligible,therefore from first law the actual work done is given by,
//W = delta_H + (delta_V_square)/2
delta_H = Cp_0*(T_2 - T_1);//[J/mol] - enthalpy change
delta_H = (delta_H/28.84);//[kJ/kg] - (1 mole = 28.84 g).
delta_V_square = V_2^(2) - V_1^(2);

W = - delta_H - ((delta_V_square)/2)/1000;//[kJ/kg] - Actual work done
printf(" The actual work done is %f kJ/kg\n\n",W);

//Now let us calculate the maximum work that can be obtained
//W_rev = (H_1 + (V_1^(2))/2) - (H_2 + (V_2^(2))/2) - T_0*(S_1 - S_2)
delta_S = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);//[J/mol-K] - Entropy change
delta_S = delta_S/28.84;//kJ/kg-K]
W_rev = -delta_H - ((delta_V_square/2)/1000) + T_0*delta_S;//[kJ/kg]
printf(" The maximum work obtainable per kg of air is %f kJ/kg\n\n",W_rev);

//The second law efficiency of the turbine is actual work done divided by reversible work,therefore
sec_eff = W/W_rev;
printf(" The second law efficiency of the turbine is %f\n\n",sec_eff);


