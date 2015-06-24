clear;
clc;
printf("\t\t\tExample Number 10.10\n\n\n");
// off-design calculation of exchanger in example 10-4  
// Example 10.10 (page no.-544-546) 
// solution

m_dot_c = 68;// [kg/min] water flow rate
T1 = 35;// [degree celsius] initial temperature 
T2 = 75;// [degree celsius] final temperature
Toe = 110;// [degree celsius] oil entering temperature 
Tol = 75;// [degree celsius] oil leaving temperature
Cc = 4180;// [J/kg degree celsius] water specific heat capacity
Ch = 1900;// [J/kg degree celsius] heat capacity of oil
U = 320;// [W/square meter degree celsius] overall heat transfer coefficient
A = 15.814568;// [square meter] area of heat exchanger (from example 10-4)
// the flow rate of oil is calculated from the energy balance for the original problem:
m_dot_h = m_dot_c*Cc*(T2-T1)/(Ch*(Toe-Tol));// [kg/min]
// the capacity rates for the new conditions are calculated as 
C_h = m_dot_h*Ch/60;// [W/degree celsius]
C_c = m_dot_c*Cc/60;// [W/degree celsius]
// so that the water (cold fluid) is the minimum fluid, and 
C_min_by_C_max = C_c/C_h;
NTU_max = U*A/C_c;
// from figure 10-13(page no.-542) or table 10-3(page no.-543) the effectiveness is 
E = 0.744;
// and because the cold fluid is the minimum, we can write 
dT_cold = E*(Toe-T1);// [degree celsius]
// and the exit water temperature is 
Tw_exit = T1+dT_cold;// [degree celsius]
// the total heat transfer under the new flow conditions is calculated  as 
m_dot_c = 40;// [kg/min]
q = m_dot_c*Cc*dT_cold/60;// [W]
printf("exit water temperature is %f degree celcius",Tw_exit);
printf("\n\n the total heat transfer under the new flow conditions is %f kW",q/1000);









