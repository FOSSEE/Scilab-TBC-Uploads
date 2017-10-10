// Example 14_2
clc;funcprot(0);
//Given data
m_s=65;// Flow rate of steam in kg/sec
p=60;// Pressure in bar
m_fw=63;// Flow rate of feed water in kg/sec
m_mw=2;// Flow rate of make up water in kg/sec
moisture=2;//%
m_dsalt=3;// Mass of dissolved salt in ppm
m_dsolid=5;// Mass of dissolved salt in ppm
m_sc=1000;// ppm
m_bd=5;// ppm
m_c=8;// kg/sec
T=30;// Room temperature in °C
CV=20000;// Calorific value in kJ/kg
C_pw=4.2;// kJ/kg.°C
m_w=1;// kg (Assumption)

//Calculation
//(a)
// Making the mass balance of the impurities entering and leaving the drum,
m_b=((m_fw*m_dsalt*10^-6)+(m_mw*m_dsolid*10^-6)-((moisture/100)*m_w*m_bd*10^-6))/(m_sc*10^-6);//The blow down rate in kg/sec

//(b)
//From Steam tables,at p=60bar 
h_fp=1213.35;// kJ/kg
h_fT=m_w*(T-0)*C_pw;// kJ/kg
Q_loss=((m_b*(h_fp-h_fT))/(m_c*CV))*100;//The heat loss in the blow down as the percentage of heat release in the furnace in %

//(c)
m_sd=((moisture/100)*m_w*m_dsolid*10^-6)*3600;// kg/hr
printf('\n(a)The blow down rate=%0.4f kg/sec \n(b)The heat loss in the blow down as the percentage of heat release in the furnace,Q_loss=%0.3f percentage \n(c)Deposition rate in super heater=%0.4f kg/hr',m_b,Q_loss,m_sd);
// The answer provided in the textbook is wrong
