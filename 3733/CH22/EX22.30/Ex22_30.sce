// Example 22_30
clc;funcprot(0);
//Given data
p_a=10;// bar
p_b=0.2;// bar
p_1=40;// bar
T_1=400;// °C
T_2=40;// °C
m_s=500;// kg/sec
T_sa=515.5;// °C
T_sb=277.3;// °C
h_fa=72.33// kJ/kg
h_fb=38.35;// kJ/kg
h_ga=363.0;// kJ/kg
h_gb=336.55;// kJ/kg
s_fa=0.1478;// kJ/kg-K
s_fb=0.0967;// kJ/kg-K
s_ga=0.5167;// kJ/kg-K
s_gb=0.6385;// kJ/kg-K
v_fa=80.9*10^-6;// m^3/kg
v_fb=77.4*10^-6;// m^3/kg
v_ga=0.0333;// m^3/kg
v_gb=1.163;// m^3/kg

//Calculation
//From h-s chart:
h_1=3230;// kJ/kg
h_2=2120;// kJ/kg
// From steam tables
h_3=167.5;// kJ/kg
h_4=h_3;// kJ/kg
// s_a=s_b
x_b=(s_ga-s_fb)/(s_gb-s_fb);
h_b=h_fb+(x_b*(h_gb-h_fb));// kJ/kg
h_c=38.35;// kJ/kg
h_d=h_c;// kJ/kg
//(a)
h_a=h_ga;// kJ/kg
m_Hg=(h_1-h_4)/(h_b-h_c);// kg/kg of steam
n_Hg=((h_a-h_b)/(h_a-h_d))*100;// The efficiency of the mercury cycle in %
n_H2o=((h_1-h_2)/(h_1-h_3))*100;// The efficiency of the steam cycle in %
n_o=(((m_Hg*(h_a-h_b))+(1*(h_1-h_2)))/(m_Hg*(h_a-h_c)))*100;// The over all efficiency of the plant in %
P=((m_s/60)*((m_Hg*(h_a-h_b))+(1*(h_1-h_2))))/1000;// Total power generated in the system in MW
printf('\nMass of mercury required to generate one kg of steam=%0.2f kg/kg of steam \nThe efficiency of the mercury cycle=%0.1f percentage \nThe efficiency of the steam cycle=%0.2f percentage \nThe over all efficiency of the plant=%0.1f percentage \nThe power generating capacity of the plant=%0.2f MW',m_Hg,n_Hg,n_H2o,n_o,P);
// The answer vary due to round off error
