clear;
clc;

//Example - 5.9
//Page number - 202
printf("Example - 5.9 and Page number - 202\n\n");

//Given
T_1_hotgas = 800;//[K]
P_1_hotgas = 1;//[bar]
T_2_hotgas = 700;//[K]
P_2_hotgas = 1;//[bar]
T_1_air = 470;//[K]
P_1_air = 1;//[bar]
P_2_air = 1;//[bar]
Cp_0_hotgas = 1.08;//[kJ/kg-K] - Mean heat capacity of hot gas
Cp_0_air = 1.05;//[kcal/kg-K] - Mean heat capacity of air
T_0 = 298.15;//[K] - surrounding temperature
P_0 = 1;//[bar] - surrounding pressure
//m_air = 2*m_hotgas

//(1)
//Assuming heat exchange only takes places in-between the streams,from energy balance we get,
//m_gas*Cp_0_hotgas*(T_2_hotgas - T_1_hotgas) + 2*m_gas*Cp_0_air*(T - T_1_air), 
T_2_air = T_1_air - ((Cp_0_hotgas*(T_2_hotgas - T_1_hotgas))/(2*Cp_0_air));//[K] - Temp of emerging air
printf(" (1).The temperature of emerging air is %f K\n\n",T_2_air);

//(2)
//Availability change of hot gas is given by,
//(si_1 - si_2)_hot = H_1 - H_2 - T_0*(S_1 - S_2)
delta_H_hotgas = (Cp_0_hotgas*(T_2_hotgas - T_1_hotgas));//[kJ/kg] - change in enthalpy of hotgas
//delta_S_hotgas = Cp_0_hotgas*log(T_2_hotgas/T_1_hotgas)- R*log(P_2/P_1), But pressure drop is zero (P_1 = P_2),therfore
delta_S_hotgas = Cp_0_hotgas*log(T_2_hotgas/T_1_hotgas);//[kJ/kg-K] - change of entropy of hot gas
delta_si_hotgas = (-delta_H_hotgas) - (-T_0*delta_S_hotgas);//[kJ/kg]
printf(" (2).The availability change of hot gas is %f kJ/kg\n\n",delta_si_hotgas);

//(3)
//Availability change of air is given by,
//(si_1 - si_2)_air = H_1 - H_2 - T_0*(S_1 - S_2)
delta_H_air = (Cp_0_air*(T_2_air - T_1_air));//[kJ/kg] - change in enthalpy of air
//delta_S_air = Cp_0_air*log(T_2_air/T_1_air)- R*log(P_2/P_1), But pressure drop is zero (P_1 = P_2),therfore
delta_S_air = Cp_0_air*log(T_2_air/T_1_air);//[kJ/kg-K] - change of entropy of air
delta_si_air = (-delta_H_air) - (-T_0*delta_S_air);//[kJ/kg]
printf(" (3).The availability change of air is %f kJ/kg\n\n",delta_si_air);

//(4)
//For the heat exchanger (Q = 0, W = 0)
//Basis : 1 kg of hot gas flowing through heat exchanger
S_gen = delta_S_hotgas + 2*delta_S_air;//[kJ/kg-K] - (as  m_air = 2*m_hotgas)
I = T_0*S_gen;//[kJ/kg]
printf(" (4).The irreversibility of thr exchanger per kg of hot gas flowing is %f kJ/kg\n",I);

//Irreversibility can also be obtained using
//I = 2*(si_1 - si_2)_air + (si_1 - si_2)_hotgas

