clear;
clc;
printf("\t\t\tExample Number 10.13\n\n\n");
// shell and tube exchangeras air heater  
// Example 10.13 (page no.-551-552) 
// solution

To = 100;// [degree celsius] temperature of hot oil
m_dot_a = 2;// [kg/s] flow rate of air
T1 = 20;// [degree celsius] initial temperature of air 
T2 = 80;// [degree celsius] final temperature of air
Cp_o = 2100;// [J/kg degree celsius] specific heat of the oil
Cp_a = 1009;// [J/kg degree celsius] specific heat of the air
m_dot_o = 3;// [kg/s] flow rate of oil
U = 200;// [W/square meter] overall heat transfer coefficient
// the basic energy balance is m_dot_o*Cp_o*(To-Toe) = m_dot_a*Cp_a*(T2-T1)
Toe = To-m_dot_a*Cp_a*(T2-T1)/(m_dot_o*Cp_o);// [degree celsius]
// we have
m_dot_h_into_Ch = m_dot_o*Cp_o;// [W/degree celsius]
m_dot_c_into_Cc = m_dot_a*Cp_a;// [W/degree celsius]
// so the air is minimum fluid
C = m_dot_c_into_Cc/m_dot_h_into_Ch;
// the effectiveness is 
E = (T2-T1)/(To-T1);
// now we may use either figure 10-16(page no.-546) or the analytical relation from table 10-4(page no.-543) to obtain NTU. 
// for this problem we choose to use the table 
NTU = -(1+C^(2))^(-1/2)*log((2/E-1-C-(1+C^2)^(1/2))/(2/E-1-C+(1+C^2)^(1/2)));
// now, we calcuate the area as 
A = NTU*m_dot_c_into_Cc/U;// [square meter]
printf("area required for the heat exchanger is %f square meter",A);





