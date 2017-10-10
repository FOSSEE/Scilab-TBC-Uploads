// Example 1_10
clc;funcprot(0);
// Given data
m_a=2200;// kg
V_a1=90*(1000/3600);// m/s
V_a2=50*(1000/3600);// m/s
m_b=1000;// kg
V_b2=88*(1000/3600);// m/s

// Calculation
KE_1=(1/2)*m_a*V_a1^2;// J
KE_2=((1/2)*m_a*V_a2^2)+((1/2)*m_b*V_b2^2);// J
// dU=U_2-U_1
dU=KE_1-KE_2;// J
printf("\nThe increase in internal energy,U_2-U_1=%6.0f J or %3.1f kJ",dU,dU/1000);
// The answer vary due to round off error

