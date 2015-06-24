clear;
clc;
funcprot(0);

//Example - 8.10
//Page number - 307
printf("Example - 8.10 and Page number - 307\n\n");

//Given
P_high = 40;//[bar]
P_low = 5;//[bar]
m_1 = 0.5;//[kg/s] - Rate of mass moving through the expander
m_2 = 0.1;//[kg/s] - Rate of mass of vapour mixing with air
e = 0.7;//Efficiency

//At state 3,(40 bar and 200 K),enthalpy and entropy is given by
H_3 = 179.7;//[kJ/kg]
S_3 = 5.330;//[kJ/kg-K]

//If isentropic conditions exits in the turbine then state 11 is at 5 bar
S_11 = 5.330;//[kJ/kg-K]
//From given compressed air tables at 5 bar and 120 K,
H_11_1 = 113.6;//[kJ/kg]
S_11_1 = 5.455;//[kJ/kg-K]
//At 5 bar and 100 K 
H_11_2 = 90.6;//[kJ/kg]
S_11_2 = 5.246;//[kJ/kg-K]
//The enthalpy has to be determined when S = S_3
//Solving by interpolation we get
H_11_s = ((H_11_1 - H_11_2)*(S_3 - S_11_2))/(S_11_1 - S_11_2) + H_11_2;//[kJ/kg]

//The adiabatic efficiency of tyrbine is given by
//(H_3 - H_11_a)/(H_3 - H_11_s) = e
H_11_a = H_3 - e*(H_3 - H_11_s);//[kJ/kg] - Actual enthalpy

 //At 5 bar,the saturated enthalpy is given to be
H_8 = 88.7;//[kJ/kg]
//From enthalpy balance during mixing we get,
//0.1*H_8 + 0.5*H_11_a = 0.6*H_9
H_9 = (m_2*H_8 + m_1*H_11_a)/(m_1 + m_2);//[kJ/kg]

//From given compressed air tables at 5 bar and 140 K,
H_9_1 = 135.3;//[kJ/kg]
//At 5 bar and 120 K 
H_9_2 = 113.6;//[kJ/kg]
//By interpolation we get
T_9 = ((H_9 - H_11_1)*(140 - 120))/(H_9_1 - H_11_1) + 120;//[K]

printf(" The temperature of air entering the second heat exchanger is %f K\n\n",T_9);
