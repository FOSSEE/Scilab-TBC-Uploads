// Example 25_2
clc;funcprot(0);
//Given data 
T_1=20+273;// K
T_3=1100+273;// K
T_5=1000+273;// K
T_11=150;// °C
p_r=8;// Pressure ratio
p_7=80;// bar
T_6a=300+273;// K
T_7=600+273;// K
n_c=100/100;// Isentropic efficiency of compressor
n_t=100/100;// Isentropic efficiency of both turbines
p_8=0.05;// bar
C_p=1;// kJ/kg
C_pa=C_p;
C_pg=C_p;
r=1.4;// Specific heat ratio 
CV=61600;// kJ/kg
C_pw=4.2;// kJ/kg°C

// Calculation
// The combustion reaction taking place in CC-I is given by CH_4+2O_2=CO_2+2H_2O
// 16+64=44+36;
m_o=64/16;// Amount of O_2 required in per kg of CH_4
m_a=(100/23)*4;// Amount of air required in kg/kg of fuel
m_act=m_a*5;// Actual air supplied in kg/kg of fuel
m_f1=(1/m_act);// Amount of fuel supplied per kg of air flow through CC-I in kg
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4=T_3/(p_r)^((r-1)/r);// K
// In CC-II
m_a1=1;// kg/sec
m_f2=(m_a1*C_pa*(T_5-T_4))/CV;// kg/kg of air flow
// From h-s chart:
h_7=3510;// kJ/kg
h_11=C_pw*T_11;// kJ/kg
m_s1=(m_a1*C_pg*(T_5-T_6a))/(h_7-h_11);// kg/kg of air
AF=(m_a1/m_s1);
m_a=1.5;// kg/sec(given)
W_g=(m_a*C_pa*((T_3-T_4)-(T_2-T_1)));
m_s=m_a*m_s1;// kg/sec
// From h-s chart:
h_g=2080;// kJ/kg
W_s=(m_s*(h_7-h_g));// kW
W_t=W_g+W_s;// Total power generated in MW
Q_s=(m_f1+m_f2)*m_a*CV;// kW
n=(W_t/Q_s)*100;// Overall efficiency of the plant
m_f=((m_f1+m_f2)*m_a*3600);// Mass of fuel supplied in kg/hr
Sfc=(m_f)/(W_t);// Specific fuel consumption in kg/kWh
printf('\n(i)Total power generating capacity of the plant=%0.0f MW \n(ii)Overall efficiency of the plant=%0.1f percentage \n(iii)Mass of fuel supplied per hour=%0.2f kg/hr \n(iv)Specific fuel consumption=%0.3f kg/kWh',W_t,n,m_f,Sfc);
// The answer vary due to round off error
