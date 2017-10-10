// Example 22_2
clc;funcprot(0);
//Given data
p_a=10;// bar
p_b=0.08;// bar
T_1=450;// °C
p_1=30;// bar
p_3=25;// bar
T_4=33;// °C
p_4=0.04;// bar


//Calculation
//From tables of mercury the following enthalpy values and entropy values are taken
h_1=359.11;// kJ/kg
h_f2=33.21;// kJ/kg
h_3=h_f2;// kJ/kg
s_1=0.5089;// kJ/kg.K
s_f2=0.087;// kJ/kg.K
Q_fg2=0.5721;// kJ/kg
h_g2=294.7;// kJ/kg
x_2=(s_1-s_f2)/(Q_fg2);
h_2=h_f2+(x_2*h_g2);// kJ/kg
// From steam tables and chart(For steam cycle)
h_4=3348.6;// kJ/kg
h_5=2183;// kJ/kg
h_6=138;// kJ/kg
h_7=972;// kJ/kg
h_8=2803;// kJ/kg
// Assume m_r=m_hg/m_H2O
m_r=(h_8-h_7)/(h_2-h_3);
// For each kg of steam generated,8.42 kg of mercury is to be used
n=((m_r*(h_1-h_2))+(h_4-h_5))/((m_r*(h_1-h_f2))+(h_7-h_6)+(h_4-h_8));// The cycle efficiency
printf('\nCycle efficiency=%0.3f',n);
