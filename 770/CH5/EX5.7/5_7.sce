clear;
clc;

//Example - 5.7
//Page number - 200
printf("Example - 5.7 and Page number - 200\n\n")

//Given
m_cold_water = 60;//[kg/s] - mass flow rate of cold water
P_1 = 50;//[kPa]
T_2 = 250;//[C]
T_water_1 = 1000 + 273.15;//[K] - Entering temperature of water
T_water_2 = 450 +273.15;//[K] - Exit temperature of water
T_0 = 298.15;//[K] - surrounding temperature
P_0 = 1;//[atm] - surrounding pressure
Cp_0 = 1.005;//[kJ/kg-K]

//For water at 50 kPa under saturated conditions,T_sat = 81.33 C, 
H_liq_1 = 340.49;//[kJ/kg] - Enthalpy
S_liq_1 = 1.0910;//[kJ/kg-K] - Entropy

//For steam at 50 kPa and 250 C,
H_2 = 2976.0;//[kJ/kg]
S_2 = 8.3556;//[kJ/kg-K]

//The cold stream is water which enters as saturated liquid at 50 kPa and exits as superheated vapour at 50 kPa and 250 C,since pressure drop is neglected.
//The mass flow rate of hot stream can be obtained from energy balance
m_hot_water = (m_cold_water*(H_2 - H_liq_1))/(Cp_0*(T_water_1 - T_water_2));//[kg/s] - mass flow rate of hot water

//Since there is no heat exchange with the surrounding therefore the total entropy generation is given by
//S_gen = delta_S_hot + delta_S_cold
delta_S_cold = S_2 - S_liq_1;//[kJ/kg-K] - change of entropy of cold water
//delta_S_hot = Cp_0*log(T_2/T_1)-R*log(P_2/P_1), But pressure drop is zero,therfore
delta_S_hot = Cp_0*log(T_water_2/T_water_1);//[kJ/kg-K] - change of entropy of hot water

S_gen = m_cold_water*delta_S_cold + m_hot_water*delta_S_hot;//[kW/K] - Entropy generated
printf(" The entropy generation rate is %f kW/K\n\n",S_gen);

//The irreversibility rete is given by
I = T_0*S_gen;//[kW]
printf(" The irreversibility rate of the heat exchanger is %f kW\n",I);

//The irreversibility can also be determined using the exergy approach
//We know that, I = W_rev - , but since actual work done zero in heat exchangers,therefore I = W_rev = exergy change
//(si_1 - si_2)_cold = H_1 - H_2 - T_0*(S_1 - S_2)
//(si_1 - si_2)_hot = Cp_0*(T_1 - T_2)- T_0*(S_1 - S_2)
// I = (si_1 - si_2)_cold - (si_1 - si_2)_hot.


