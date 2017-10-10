// Example 8_6
clc;funcprot(0);
// Given data
P_1=10;// kPa
P_2=2;// MPa
P_5=200;// kPa
T_3=600;// °C
h_2=192;// kJ/kg
h_3=3690;// kJ/kg
s_3=7.7032;// kJ/kg.K

// Calculation
// We have from Example 8.3 and the steam tables
h_1=h_2;// kJ/kg
h_7=505;// kJ/kg
h_6=h_7;// kJ/kg
h_4=2442;// kJ/kg
h_5=(((7.7032-7.5074)/(7.7094-7.5074))*(2971-2870))+2870;// kJ/kg
m_6=1;// kg
m_5=((h_6-h_2)/(h_5-h_2))*m_6;// kg
m_2=m_6-m_5;// kg
w_T=(h_3-h_5)+((h_5-h_4)*m_2);// The work output from the turbine in kJ/kg
q_B=h_3-h_7;// kJ/kg
n_2=w_T/q_B;// The cycle efficiency
n_1=0.3568;// The power cycle efficiency from example 8.3
Pi=((n_2-n_1)/n_1)*100;// The percentage increase in efficiency
printf(" The percentage increase in efficiency is %1.2f percentage.",Pi);

