clear;
clc;

//Example - 5.8
//Page number - 201
printf("Example - 5.8 and Page number - 201\n\n")

//Given
m_water = 10000;//[kg/h] - Mass flow rate of cold water
m_water = m_water/3600;//[kg/s]
T_1_water = 30 + 273.15;//[K] - Cold water entering temperature
m_HC = 5000;//[kg/h] - mass flow rate of hot hydrocarbon
m_HC = m_HC/3600;//[kg/s]
T_1_HC = 200 + 273.15;//[K] - Hot hydrocarbon entering temperature
T_2_HC = 100 + 273.15;//[K] - Hot hydrocarbon leaving temperature
Cp_0_water = 1.0;//[kcal/kg-K] - Mean heat capacity of cooling water
Cp_0_HC = 0.6;//[kcal/kg-K] - Mean heat capacity of hydrocarbon

//(1)
//Applying energy balance to the heat exchanger,we get
//m_water*Cp_0_water*(T - T_1_water) = m_HC*Cp_0_HC*(T_1_HC - T_2_HC)
T_2_water = ((m_HC*Cp_0_HC*(T_1_HC - T_2_HC))/(m_water*Cp_0_water)) + T_1_water;//[K]
T_2 = T_2_water - 273.15;//[C]
printf(" (1).The exit temperature of the cooling water is %f C\n\n",T_2);

//(2)
//delta_S_hot_HC = Cp_0*log(T_2/T_1)-R*log(P_2/P_1), But pressure drop is zero,therfore
delta_S_hot_HC = (Cp_0_HC*4.184)*log(T_2_HC/T_1_HC);//[kW/K] - change of entropy of hot hydrocarbon
delta_S_HC = m_HC*delta_S_hot_HC;//[kW/K] - Entropy change for hudrocarbon liquid 
printf(" (2).Entropy change rate of hydrocarbon liquid is %f kW/K\n",delta_S_HC);

delta_S_cold_water = (Cp_0_water*4.184)*log(T_2_water/T_1_water);//[kW/K] - change of entropy of cooling water
delta_S_water = m_water*delta_S_cold_water;//[kW/K] - Entropy change for water
printf("     And entropy change rate of water is %f kW/K\n\n",delta_S_water);

//(3)
T_0 = 298.15;//[K] - Surrounding temperature
//S_gen = delta_S_cold_water + delta_S_hot_HC =   m_water*delta_S_cold_water + m_HC*delta_S_hot_HC;//[kW/K] - Entropy generated
S_gen = delta_S_water + delta_S_HC;//[kW/K]
I = T_0*S_gen;//[kW]
printf(" (3).The irreversibility rate of the heat exchanger is %f kW\n",I);


