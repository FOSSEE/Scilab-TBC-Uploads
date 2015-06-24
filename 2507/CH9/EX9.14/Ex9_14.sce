clc
clear
printf("Example 9.14 | Page number 289 \n\n");
//Part(a) Find mixture temperature
//Part(b) Find rate of entropy generation

//Given Data
T_E = (273+20) //K //temperature of ethane
p_E = 200 //kPa //pressure of ethane
T_M = 273+45 //K //temperature of methane
p_M = 200 //kPa //pressure of methane
m_E = 9 //kg/s //mass rate of ethane
m_M = 4.5 //kg/s //mass rate of methane
Cp_E = 1766 //J/kgK //specific heat of ethane
Cp_M = 2254 //J/kgK //specific heat of methane

//Solution
//Part(a)
printf("Part(a)\n");
T = (m_E*Cp_E*T_E+m_M*Cp_M*T_M)/(m_E*Cp_E+m_M*Cp_M) //K //mixture temperature
printf("Mixture temperature = %.1f K\n\n",T)

//Part(b)
printf("Part(b)\n");
R_E = 8314.3/30 //J/kgK //gas constant for ethane
R_M = 8314.3/16 //J/kgK //gas constant for methane
R = (m_E/(m_E+m_M))*R_E+(m_M/(m_E+m_M))*R_M //J/kgK //gas constant of mixture
M = 8314.3/R //kg/kmol //mixture molar mass
x_E = (m_E/(m_E+m_M))*(M/30) //mole fraction of ethane
x_M = (m_M/(m_E+m_M))*(M/16) //mole fraction of methane

delta_S_E = Cp_E*log(T/T_E) - R_E*log(x_E) //J/kgK //change in entropy of ethane
delta_S_M = Cp_M*log(T/T_M) - R_M*log(x_M) //J/kgK //change in entropy of methane

printf("Rate of entropy production = %.4f kJ/sK",(m_E*delta_S_E+m_M*delta_S_M)*.001)
