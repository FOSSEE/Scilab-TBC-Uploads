clear;
clc;
funcprot(0);

//Example - 8.9
//Page number - 304
printf("Example - 8.9 and Page number - 304\n\n");

//Given
//At 1 bar, 310 K 
H_1 = 310.38;//[kJ/kg]
//At 200 bar, 310 K
H_2 = 277.7;//[kJ/kg]
//At 1 bar, Saturated liquid
H_7 = -122.6;//[kJ/kg]
//At 1 bar, Saturated vapour
H_8 = 77.8;//[kJ/kg]
//At 200 bar, 200 K
H_3 = 117.6;//[kJ/kg]
//At 1 bar, 100 K
H_11 = 98.3;//[kJ/kg]

//(1)
//For 1 kg of liquid air obtained,the overall enthalpy balance is
//m_2*H_2 = W - 122.6 + (m_2 - 1)*H_1
//W = - 0.8*m_2*(H_11 - H_3)
//Overall enthalpy balance equation becomes
//H_2*m_2 = 15.44*m_2 - H_7 + (m_2 - 1)*H_1, solving
m_2_prime = (H_7 - H_1)/(H_2 - 15.44 - H_1);

printf("The number of kilograms of air compressed per kg of liquid air produced is %f kg\n\n",m_2_prime);

//(2)
//Enthalpy balance around separator is 
//0.2*m_2*H_5 = -H_7 + (0.2*m_2 - 1)*H_8, solving
m_2 = m_2_prime;
H_5_prime = ((0.2*m_2-1)*H_8 - H_7)/(0.2*m_2);

//At point 5, P = 200 bar and enthalpy is
H_5_1 = -33.53;//[kJ/kg]
//From compressed air tables at 200 bar and 140 K,
H_5_2 = 0.2;//[kJ/kg]
//At 200 bar and 120 K,
H_5_3 = -38.0;//[kJ/kg]
//Solving by interpolation we get
T_5 = ((H_5_1 - H_5_3)*(140 - 120))/(H_5_2 - H_5_3) + 120;//[K]

printf("The temperature of air before throttling is %f K\n\n",T_5);

//(3)
//During mixing of streams 8 and 11 to produce stream 9, the enthalpy balance is
// (0.2*m_2 - 1)*H_8 + 0.8*m_2*H_11 = (m_2 - 1)*H_9,Solving for H_9

H_9_prime = ((0.2*m_2-1)*H_8+0.8*m_2*H_11)/(m_2 - 1);

//From given compressed air tables at 1 bar and 100 K,
H_9_1 = H_11;
//At 1 bar and 90 K 
H_9_2 = 87.9;//[kJ/kg]
//Solving by interpolation we get
T_9 = ((H_9_prime - H_9_2)*(100 - 90))/(H_9_1 - H_9_2) + 90;//[K]

printf("The temperature of stream entering second heat exchanger is %f K\n\n",T_9);

//(4)
//Enthalpy balance around first heat exchanger is
//H_2*m_2 + (m_2 - 1)*H_10 = H_3*m-2 + (m-2 - 1)*H_1, solving for H_10

H_10_prime = ((m_2 - 1)*H_1 + H_3*m_2 - H_2*m_2)/(m_2 - 1);

//From given compressed air tables at 1 bar and 140 K,
H_10_1 = 139.1;//[kJ/kg]
//At 1 bar and 120 K 
H_10_2 = 118.8;//[kJ/kg]
//Solving by interpolation we get
T_10 = ((H_10_prime - H_10_2)*(140 - 120))/(H_10_1 - H_10_2) + 120;//[K]

printf("The temperature of stream exiting second heat exchanger is %f K\n\n",T_10);
