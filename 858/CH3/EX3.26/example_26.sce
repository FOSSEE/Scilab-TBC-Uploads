clc
clear 
printf("example 3.26 page number 114\n\n")

//to find the outlet temperature of water

q_NTP = 10*(200/101.3)*(273/313);
m_CO2 = 44*(q_NTP/22.4);
s_CO2 = 0.85   //in kJ/kg K

Q = m_CO2*s_CO2*(40-20)   //Q = ms*delta_T

d0 = 0.023   //in mm
A0 = (3.14/4)*d0^2;
di = 0.035   //in mm
Ai = (3.14/4)*di^2;

A_annular = Ai-A0;
u = 0.15   //in m/s
m_water = A_annular*(u*3600)*1000   //in kg/hr

s_water = 4.19    //in kJ/kg K
t = 15+(Q/(m_water*s_water));

printf("exit water temperature = %f degree C",t)
