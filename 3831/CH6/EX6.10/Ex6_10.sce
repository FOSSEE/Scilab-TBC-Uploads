// Example 6_10
clc;funcprot(0);
// Given data
p_1=2000;// psig
T_1=200+459.67;// R
T_T=70.0+459.67;// R
m_R=0.500;// lbm/s
W_c=-3.00;// hp
k=1.4;// The specific heat ratio of nitrogen

// Calculation
m_Rbym_D=(k-1)/[(k*(T_1/T_T))-1];// The ratio of recycled mass flow rate to discharge mass flow rate
c_p=0.248;// Btu/(lbm.R)
Q_H=(m_R*c_p*(T_1-T_T))+[(W_c)*550*(1/778)];// Btu/s
printf("\nThe rate of recycle heat transfer required,Q_H=%2.1f Btu/s",Q_H);
