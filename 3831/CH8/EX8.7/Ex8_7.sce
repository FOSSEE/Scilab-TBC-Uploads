// Example 8_7
clc;funcprot(0);
// Given data
Q_b=950*10^5;// kJ/h
T_b=500;// K
W_p=-23.0;// kW
Q_c=-600*10^5;// kJ/h
T_c=10.0;// °C

// Calculation
Q_net=(Q_b+Q_c);// kJ/h
W_T_net=Q_net/3600;// kJ/h
W_T_net=W_T_net/1000;// MW
W_T_total=(W_T_net*10^3)+W_p;// kW
S_p=-((Q_b/(T_b+273.15))+(Q_c/(T_c+273.15)));// kJ/(h.K)
Q_in=Q_b;// kJ/h
Q_out=Q_c;// kJ/h
n_T_act=(1-((abs(Q_out))/Q_in))*100;// The actual thermal efficiency of this power plant in %
n_T_rev=(1-((T_c+273.15)/(T_b+273.15)))*100;// The theoretical reversible (Carnot) efficiency in %
printf("\nThe net power of the turbine,(W_T)_total=%4.0f kW(round off error) \nThe rate of entropy production,S_p=%2.1e kJ/(h.K)",W_T_total,S_p);
