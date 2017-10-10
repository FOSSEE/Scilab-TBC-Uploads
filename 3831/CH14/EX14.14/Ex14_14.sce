// Example 14_14
clc;funcprot(0);
// Given data
m_ref=0.500;// kg/s
T_0=25.0;// °C
n_c=70.0;// The isentropic efficiency of compressor
// Using Figure 14.36 as the illustration for this example, the properties at the four stations can be found in Tables C.7e, C.7f, and C.8d as
// Station 1
// Compressor inlet
x_1=1.00;// The quality of steam
T_1=-20.0;// °C
h_1=235.31;// kJ/kg
s_1=0.9332;// kJ/kg.K
p_1=132.99;// kPa
// Station 2
// Compressor outlet
p_2s=800;// kPa
s_2=s_1;// kJ/kg.K
h_2s=271.10;// kJ/kg
T_2s=39.8;// °C
// Station 3
// Condenser outlet
x_3=0.00;// The quality of steam
p_3=725;// kPa
h_3=87.46;// kJ/kg
s_3=0.3257;// kJ/kg.K
T_3=27.9;// °C
// Station 4h
// Expansion valve outlet
h_4h=h_3;// kJ/kg
p_4h=160;// kPa
h_4h=87.46;// kJ/kg
x_4h=0.280;// The quality of steam
s_4h=0.3449;// kJ/kg.K
T_4h=-15.6;// °C
T_e=-15.6;// °C

// Calculation
// (a)
h_2=((h_2s-h_1)/(n_c/100))+h_1;// kJ/kg
p_2=p_2s;// kPa
//Interpolation in Table C.7f in Thermodynamic Tables to accompany Modern Engineering Thermodynamics (or through the use of an appropriate computer program) gives the following additional properties at this state:
s_2=0.9814;// kJ/kg.K
T_2=54.97;// °C
Q_condenser=m_ref*(h_3-h_2);// kJ/s
Q_evaporator=m_ref*(h_1-h_4h);// kJ/s
Q_compressor=m_ref*(h_2-h_1);// kJ/s
I_ac=m_ref*(T_0+273.15)*(s_2-s_1);// kW
I_con=(T_0+273.15)*((m_ref*(s_3-s_2))-(Q_condenser/(T_0+273.15)));// kW
I_ev=m_ref*(T_0+273.15)*(s_4h-s_3);// kW
I_e=(T_0+273.15)*((m_ref*(s_1-s_4h))-(Q_evaporator/(T_e+273.15)));// kW
I_total=I_ac+I_con+I_ev+I_e;// kW
W_compressor=Q_compressor;// kW
// (b)
COP=Q_evaporator/W_compressor;// The system coefficient of performance
T_L=T_e;// °C
COP_act=2.85;// The second law efficiency for a refrigeration system
E_RAC=(abs(1-((T_0+273.15)/(T_e+273.15)))*COP_act)*100;// %
printf("\n(a)The irreversibility rate of each component in the system are given below: \n   I_adiabatic compressor=%1.2f kW \n   I_condenser=%1.2f kW \n   I_expansion valve=%1.2f kW \n   I_evaporator=%1.2f kW \n   The total irreversibility rate of the system,I_total=%2.0f kW \n(b)The system coefficient of performance,COP=%1.2f \n   The second law efficiency for a refrigeration system,E_RAC=%2.1f percentage",I_ac,I_con,I_ev,I_e,I_total,COP,E_RAC);
// The answer provided in the text book is wrong(The value of h_2 changed little bit)
