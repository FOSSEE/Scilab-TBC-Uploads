// Example 9_14
clc;funcprot(0);
// Given data
P_1=10;// kPa
P_3=4;// MPa
P_5=100;// kPa
W_ST=100;// The power output from the turbine in MW
T_5=25+273;// K
r_p=5;// The pressure ratio
T_7=850+273;// K
T_9=350;// K
c_p=1.00// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
h_1=192;// kJ/kg
h_2=h_1;// kJ/kg
// At 400°C and 4 MPa 
h_3=3214;// kJ/kg
s_3=6.7698;// kJ/kg.K
s_4=s_3;// kJ/kg.K
s_f4=0.6491;// kJ/kg.K
s_fg4=7.5019;// kJ/kg.K
x=(s_4-s_f4)/s_fg4;// The quality of steam
h_f4=192;// kJ/kg
h_fg4=2393;// kJ/kg
h_4=h_f4+(x*h_fg4);// kJ/kg
h_3=3214;// kJ/kg
m_s=(W_ST*10^3)/(h_3-h_4);// kg/s
T_6=T_5*(r_p)^((k-1)/k);// K
T_8=T_7*(1/r_p)^((k-1)/k);// K
h_2=192;// kJ/kg
m_a=(m_s*(h_3-h_2))/(c_p*(T_8-T_9));// kg/s
W_turb=m_a*c_p*(T_7-T_8);// kJ/kg
W_comp=m_a*c_p*(T_6-T_5);// kJ/kg
W_GT=(W_turb-W_comp)/10^3;// The net gas turbine output in MW
Q_in=(m_a*c_p*(T_7-T_6))/10^3;// MW
n=(W_ST+W_GT)/Q_in;// The combined cycle efficiency
printf("\nThe efficiency of the combined Brayton-Rankine cycle,n=%0.3f or %2.1f percentage.",n,n*100);
