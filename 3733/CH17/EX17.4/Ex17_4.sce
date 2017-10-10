// Example 17_4
clc;funcprot(0);
//Given data
m_s=50000;// Steam condensed in kg/hr
T_s=40;// Temperature of steam in a condenser in °C
x=0.85;// Dryness of steam entering into condenser
m_a=150;// The air leakage in the condenser in kg/hr
T_c=35;// Temperature of the condensate in °C
T_suction=32;//Temperature at the suction of the air pump in °C
gradT=10;//The rise in cooling water temperature in °C
R=287;// Gas constant in J/kg k
p_b=1.013;// bar
C_pw=4.2;// kJ/kg.k

//Calculation
//From steam tables
//(a)
//At 40°C saturation temperature 
p_s=0.0752;// Pressure in bar
v_s=19.5;// Specific volume in m^3/kg
V=m_s*x*v_s;// Volume in m^3
p_a=(m_a*R*(T_s+273))/(V*10^5);// The pressure of air in the condenser in bar
p_t=p_a+p_s;// The total pressure in the condenser in bar
P_v=(p_b-p_t)/0.013959;// Vacuum in condenser in cm of Hg

//(b)
// From steam tables ,At 32°C
p_s1=0.0485;// Partial pressure of steam in bar
p_a1=p_t-p_s1;// bar
V_1=(m_a*R*(T_suction+273))/(p_a1*10^5);// Volume of air at 32°C in m^3/hr
Apc=V_1;// Air pump capacity in m^3/hr

//(c)
v_s1=29.6;// Specific volume of steam at 32°C saturation temperature in m^3/hr
Ls=V_1/v_s1;// Loss of steam in kg/hour

//(d)
// From steam tables ,At 40°C saturation temperature and 0.85 dry
h_f1=168;// kJ/kg
h_fg1=2414;// kJ/kg
h_1=h_f1+(x*h_fg1);// kJ/kg
h_f2=147;// kJ/kg
m_w=(m_s*(h_1-h_f2))/(C_pw*gradT*1000);// Quality of cooling water passed through the condenser in tons/hr
printf('\n(a)Vacuum in condenser=%0.2f cm of Hg \n(b)Capacity of dry air pump=%0.1f m^3/hr \n(c)Loss of steam in kg per hour=%0.1f kg/hr \n(d)Quality of cooling water passed through the condenser=%0.0f tons/hr',P_v,Apc,Ls,m_w);
// The answer provided in the textbook is wrong
