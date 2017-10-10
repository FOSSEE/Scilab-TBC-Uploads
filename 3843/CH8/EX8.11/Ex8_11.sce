// Example 8_11
clc;funcprot(0);
// Given data
T_1=-10;// °C
T_3=40;// °C
P_1=0.15;// MPa
n_c=0.80;// The efficiency of the compressor
mdot=0.6;// kg/s

// Calculation
// From appendix D we find,using T_3=40°C
h_4=74.5;// kJ/kg
h_3=h_4;// kJ/kg
// From table D-3 at P_1=0.15 MPa and T_1=10°C
h_1=185;// kJ/kg
s_1=0.732;// kJ/kg.K
s_2a=s_1;// kJ/kg.K
P_2=1.0;// MPa
h_2a=(((0.732-0.7254)/(0.7476-0.7254))*(225.3-217.8))+218;// kJ/kg
h_2=((h_2a-h_1)/n_c)+h_1;// kJ/kg
Q_E=mdot*(h_1-h_4);// The rate of refrigeration in kW
COP=Q_E/(mdot*(h_2-h_1));// The coefficient of performance 
printf("\nThe rate of refrigeration,Q_E=%2.1f kW \nThe coefficient of performance,COP=%1.2f",Q_E,COP);
