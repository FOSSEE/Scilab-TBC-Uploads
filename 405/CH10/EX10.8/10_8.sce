clear;
clc;
printf("\t\t\tExample Number 10.8\n\n\n");
// effects of off-design flow rates for exchanger in example 10-7 
// Example 10.8 (page no.-537-538) 
// solution

// we did not calculate the oil flow in example 10-7 but can do so now from 
q = 193;// [kW]
c_oil = 1.9;// [J/kg degree celsius] heat capacity of oil
t1 = 15;// [degree celsius] temperature of entering oil
t2 = 85;// [degree celsius] temperature of leaving oil
m_dot_o = q/(c_oil*(t2-t1));// [kg/s]
// the new flow rate will be half this value 
m_dot_o = m_dot_o/2;// [kg/s]
// we are assuming the inlet temperatures remain the same at 130 degree celsius for the steam and 15 degree celsius for the oil.
// the new relation for the heat transfer is q = m_dot_o*c_oil*(Teo-15) = m_dot_s*cp*(130-Tes)                       (a)
// but the exit temperatures, Teo and Tes are unknown. furthermore, dT_m is unknown without these temperatures, as are the values of R and P from figure  10-11(page no.-535). this means we must use an iterative procedure to solve for the exit temperatures using equation (a) and   q = U*A*F*dT_m          (b)
// the general procedure is to assume values of the exit temperatures until the q's agree between equations(a) and (b).
printf("the objective of this example is to show that an iterative procedure is required when the inlet and outlet temperatures are not known or easily calculated");
printf("\n\n there is no need to go through this iteration because it can be avoided by using the techniques described in section 10-6");

