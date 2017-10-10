// Example 17_3
clc;funcprot(0);
//Given data
P=3000;// kW
P_1=10;// bar
T_1=250;// °C
P_c=65;// cm of Hg
P_b=75.2;// cm of Hg
gradT=15;// °C
T_c=35;// The temperature of the condensate in °C
C_pw=4.2;// kJ/kg.°C

//Calculation
//(a)
p_t=(P_b-P_c)*0.1359;// bar
p_s=p_t;// bar (as p_a=0)
// From h-s chart
x=0.846;// Dryness fraction from h-s chart
h_1=2984;// kJ/kg
h_2=2234;// kJ/kg
h_f2=147;//kJ/kg
gradh=(h_1-h_2);//  kJ/kg
m_s=P/gradh;// kg/sec
m_s=m_s*3600;// kg/hr
SSC=m_s/P;// Specific steam consumption in kg/kW-hr
//(b)
n_th=(gradh/(h_1-h_f2))*100;// Thermal efficiency in %
//(c)
m_w=(m_s*(h_2-h_f2))/(gradT*C_pw*1000);//Cooling water supplied in tons/hr.
printf('\n(a)Specific steam consumption=%0.1f kg/kW-hr \n(b)Thermal efficiency of the plant=%0.1f percentage \n(c)Cooling water supplied=%0.0f tons/hr',SSC,n_th,m_w);
