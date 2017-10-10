// Example 17_16
clc;funcprot(0);
// Given data
m_s1=20;// tons/hr
m_s1=20*10^3;// kg/hr
m_a1=6;// kg/hr
T_1=39;// °C
T_2=28;// °C
T_3=36;// °C
gradT=15;// °C
R=287;// J/kg.°C
C_pa=1.005;// kJ/kg.°C
C_pw=4.18;//kJ/kg.°C

// Calculation
// Considering section 1-1
// From steam tables,at T_1=39°C
p_s1=0.06991;// bar
v_s1=20.56;// m^3/kg
h_s1=2572.6;// kJ/kg
V_s1=(m_s1*10^3*v_s1);// m^3/hr
// By Dalton's law,
V_a1=V_s1;// m^3/hr
p_a1=(m_a1*R*(T_1+273))/(V_a1);// N/m^2
p_a1=p_a1/10^5;// bar
p_t=p_s1+p_a1;// bar

//Considering section 2-2
//From steam tables,at T_2=28°C
p_s2=0.0378;// bar
v_s2=36.728;// m^3/kg
h_s2=2552.7;// kJ/kg
p_a2=p_t-p_s2;// bar
V_a2=(m_a1*R*(T_2+273))/(p_a2*10^5);// m^3/hr
//As per Dalton's law,
V_s2=V_a2;// m^3/hr
m_s2=V_a2/v_s2;// kg/hr

// Considering section 3-3
// From steam tables,at T_3=36°C
p_s3=0.0594;// bar
v_s3=23.967;// m^3/kg
p_a3=p_t-p_s3;// bar
V_s3=(m_a1*R*(T_3+273))/(p_a3*10^5);// m^3/hr
V_a3=V_s3;// m^3/hr
m_s3=V_a3/v_s3;// kg/hr
Pr=((V_a3-V_a2)/V_a3)*100;// %

// Determination of cooling water requirement
// Assume
m_a2=m_a1;
m_c=m_s1;// (assumed))
m_w=(((m_s1*h_s1)-(m_s2*h_s2))+((m_a1*C_pa*T_1)-(m_a2*C_pa*T_2))-(m_c*C_pw*T_3))/(C_pw*gradT);// kg/hr
m_w=m_w/10^3;// tons/hr
m_w=(m_w*10^3)/3600;// kg/sec
m_sc=m_s3-m_s2;// Saving in condensate in kg/hr
Q=m_sc*C_pw*(T_3-gradT);//kJ/hr
printf('\nPercentage reduction in air pump capacity=%0.1f percentage \nMinimum quantity of cooling water=%0.1f kg/sec \nSaving in the condensate=%0.2f kg/hr \nSaving in heat supplied,Q=%0.2f kJ/hr',Pr,m_w,m_sc,Q);
// The answer vary due to round off error

