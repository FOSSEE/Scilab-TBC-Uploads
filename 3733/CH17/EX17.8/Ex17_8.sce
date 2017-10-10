// Example 17_8
clc;funcprot(0);
//Given data
T_s=38;// The temperature of the steam entering the condenser in °C
T_a=34;// The temperature of the air  entering the air pump in °C
T_c=36;// The temperature of the air of the condensate in °C
m_a=3;// kg/hr
m_c=8000;//The condensate removed in kg/hr
R=287;// J/kg.k

//Calculation
//(a)
//From steam table, a saturation temperature at 38°C
p_s1=0.0676;// bar
p_a1=0.0;// bar
p_t=p_a1+p_s1;// bar
//From steam table, a saturation temperature at 34°C
v_s1=26.5;// kg/hr
p_s=0.0542;// bar
p_a=p_t-p_s;// Partial pressure of air at the entry of air pump in bar
V_1=(m_a*R*(T_a+273))/(p_a*10^5);// m^2/hr

//(b) 
// From steam table, a saturation temperature at 36°C
v_s2=24;// kg/hr
p_s=0.0606;// bar
p_a=p_t-p_s;// bar
V_2=(m_a*R*(T_c+273))/(p_a*10^5);// m^2/hr
V=m_c*0.001006;// m^3/hr
Tv=V_2+V;// Total volume removed by wet air pump in m^3/hr
Pi_apc=((Tv-V_1)/V_1)*100;// Percentage increase in air-pump capacity in %
m_wd=(V_1/v_s1);// Mass of water vapour carried with air when dry air-pump is used to remove the air in kg/hr
m_ww=(Tv/v_s2);// Mass of water vapour carried with air when wet air-pump is used to remove the air in kg/hr
Pi_lwv=((m_ww-m_wd)/m_wd)*100;// Percentage increase in loss of water vapour
printf('\n(a)The Capacity of the air pump=%0.0f m^3/hr \n(b)Percentage increase in air-pump capacity=%0.0f percentage \n   Percentage increase in air-pump capacity=%0.1f percentage',Tv,Pi_apc,Pi_lwv);
// The answer vary due to round off error
