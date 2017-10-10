// Example 8_12
clc;funcprot(0);
// Given data
T_1=-20;// °C
T_3=41.64;// °C
m_L=0.6;// kg/s
P_L=151;// kPa
P_H=1000;// kPa

// Calculation
P_i=(P_L*P_H)^(1/2);// kPa
// From appendix D we find,
h_1=178.6;// kJ/kg
s_1=0.7082;// kJ/kg.K
s_2=s_1;// kJ/kg.K
h_7=76.3;// kJ/kg
h_8=h_7;// kJ/kg
h_3=(((389-320)/(400-320))*(43.6-37.1))+37.1;// kJ/kg
h_4=h_3;// kJ/kg
s_6=(((389-320)/(400-320))*(0.6928-0.6960))+0.6960;// kJ/kg.K
s_5=s_6;// kJ/kg.K
h_5=(((389-320)/(400-320))*(190.97-188.0))+188.0;// kJ/kg
// At P_i=389 kPa we interpolate and obtain
// T=10°C s=0.6993 kJ/kg.K h=193.8 kJ/kg
// T=20°C s=0.7226 kJ/kg.K h=200.3 kJ/kg
// This gives
h_2=(((0.7082-0.6993)/(0.7226-0.6993))*(200.3-193.8))+193.8;// kJ/kg
// Also,extrapolating,we find
h_6=(((0.6932-0.7021)/(0.7254-0.7021))*(217.8-210.2))+210.2;// kJ/kg
Q_E=m_L*(h_1-h_4);// kW
m_H=m_L*((h_2-h_3)/(h_5-h_8));// The mass flux in the high pressure stage in kg/s
W_in=(m_L*(h_2-h_1))+(m_H*(h_6-h_5));// The power input to the compressors in kW
COP=Q_E/W_in;// The coefficient of performance
printf("\nThe rate of refrigeration,Q_E=%2.1f kW \nThe coefficient of performance,COP=%1.2f",Q_E,COP);
