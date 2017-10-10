// Example 24_29
clc;funcprot(0);
//Given data 
T_1=15+273;// K
p_1=1;// bar
T_5=1000;// K
dp_in=0.07;// bar
dp_re=0.1;// bar
R_c1=2;// Compression ratio
n_c=0.80;//  Efficiency of compressor
n_c1=n_c;
n_c2=n_c;
dp_com=0.15;// bar
dp_rh=0.1;// bar
n_t1=0.87;// Efficiency of turbine 1
n_t2=0.7;// Efficiency of turbine 2
e=0.75;// Effectiveness of heat exchanger 
n_com=0.98;// Combustion efficiency
n_m=0.99;// Mechanical efficiency of compressor-turbine
m_a=20;// kg/sec
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
CV=43.5;// MJ/kg

//Calculation
p_2=p_1*R_c1;// bar
p_3=p_2-dp_in;// bar
p_4=2*p_3;// bar
p_5=p_4-dp_in-dp_re;// bar
p_8=1+dp_rh;// bar
T_2=T_1+((T_1/n_c1)*(((R_c1)^((r_a-1)/r_a))-1));// K
T_3=T_1;// K
T_4=T_3+((T_3/n_c2)*(((R_c1)^((r_a-1)/r_a))-1));// K
// as T_4-T_3=T_2-T_1
W_1=2*m_a*C_pa*(T_2-T_1);// Power required to run the compressor in kW
W_t1=W_1/n_m;// Power developed by compressor turbine in kW
W_t1=W_t1/m_a;// The work developed by the turbine per kg of air in kJ/kg
dT_56=W_t1/C_pg;//(dT_56=T_5-T_6) K 
R_t1=1/(1-((dT_56/(T_5*n_t1))))^(r_a/(r_a-1));
p_6=p_5/R_t1;// bar
p_7=p_6-dp_rh;// bar
R_t2=p_7/p_8;// bar
T_7=T_5;// K
dT_78=T_7*n_t2*(1-((1/R_t2)^((r_a-1)/r_a)));// K
T_8=T_7-dT_78;// K
W=m_a*C_pa*(T_7-T_8);// Net output of the plant in kW
T_9=T_4+(e*(T_8-T_4));// K
Q_s=C_pa*((T_5-T_9)+(dT_56));// The total heat supplied in the plant per kg of air in kJ/kg
m_f=((m_a*Q_s)/(CV*10^3*n_com))*3600;// The mass of fuel supplied in kg/hr
Sfc=m_f/W;// Specific fuel consumption in kg/kWh
n_th=(W/(Q_s*m_a))*100;// Thermal efficiency in %
printf('\nThe specific fuel consumption of the plant=%0.2f kg/kWh \nPlant capacity=%0.0f kW \nOver all efficiency of the plant=%0.1f',Sfc,W,n_th);
// The answer provided in the textbook is wrong
