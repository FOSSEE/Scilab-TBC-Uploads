clear;
clc;
printf("\t\t\tExample Number 10.9\n\n\n");
// off-design calculation using E-NTU method  
// Example 10.9 (page no.-542-544) 
// solution

m_dot_o = 0.725;// [kg/s] oil flow rate
m_dot_s = 5.2;// [kg/s] steam flow rate
t1 = 15;// [degree celsius] temperature of entering oil
T1 = 130;// [degree celsius] temperature of entering steam
c_oil = 1900;// [J/kg degree celsius] heat capacity of oil
c_steam = 1860;// [J/kg degree celsius] heat capacity of steam
// for the steam 
Cs = m_dot_s*c_steam;// [W/degree celsius]
// for the oil
Co = m_dot_o*c_oil;// [W/degree celsius]
// so the oil is minium fluid. we thus have
C_min_by_C_max = Co/Cs;
U = 275;// [W/square meter degree celsius] overall heat transfer coefficient
A = 10.83;// [square meter] surface area of heat exchanger
NTU = U*A/Co;
// we choose to use the table and note that Co(minimum) is unmixed and Cs(maximum) is mixed so that the first relation in the table 10-3(page no.-543)  applies.
// we therfore calculate E(effectiveness) as 
E = (1/C_min_by_C_max)*{1-exp(-C_min_by_C_max*(1-exp(-NTU)))};
// if we were using figure 10-14(page no.-544) we would have to evaluate 
C_mixed_by_C_unmixed = Cs/Co;
// and would still determine 
E = 0.8;// approximately
// now, using the effectiveness we can determine the temperature difference of the minimum fluid(oil as)
dT_o = E*(T1-t1);// [degree celsius]
// so that heat transfer is 
q = m_dot_o*c_oil*(dT_o);// [W]
q_initial = 193440;// [W] heat transfer when oil flow rate is 100 %
printf("we find a reduction in the oil flow rate of 50 %% causes a reduction in heat transfer of only %f %%",(q_initial-q)*100/q_initial);









