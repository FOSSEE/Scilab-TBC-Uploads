// Example 5_3
clc;funcprot(0);
// Given data
Q_B=950*10^5;// kJ/h
W_p=23.0;// kW
Q_c=-600*10^5;// kJ/h

// Calculation
Q_net=(Q_B+Q_c);// kJ/h
W_T_net=Q_net/3600;// kJ/h
W_T_net=W_T_net/1000;// MW
W_T_total=(W_T_net*10^3)+W_p;// kW
printf("\nThe net power of the turbine,(W_T)_total=%4.0f kW(round off error)",W_T_total);
// The answer vary due to round off error
