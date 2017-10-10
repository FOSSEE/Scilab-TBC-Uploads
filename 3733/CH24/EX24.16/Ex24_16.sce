// Example 24_16
clc;funcprot(0);
//Given data 
P=5;// Power plant capacity in MW
T_1=300;// K
p_1=1;// bar
T_5=650+273;// K
p_r=5;// Pressure ratio
e=0.7;// The effectiveness of regenerator
n_c=0.8;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of both turbines
n_t1=n_t;
n_t2=n_t;
n_com=0.97;// Combustion efficiency
n_m=0.98;// Mechanical efficiency of both turbines
CV=40000;// kJ/kg
C_pa=1;// kJ/kg.°C
C_pg=1.145;// kJ/kg.°C
r_a=1.4;// Specific heat ratio for air
r_g=1.35;// Specific heat ratio for gases

//Calculation
p_2=p_1*p_r;// bar
p_i=sqrt(p_1*p_2);// The intermediate pressure between two compressors
T_2a=T_1*(p_i)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_3=T_1;// K
T_4=T_2;// K
T_7=T_5;// K
// Work developed by the compressor turbine = Work required to run the compressor
T_6=T_5-((2*C_pa*(T_2-T_1))/(C_pg*n_m));// K
T_6a=T_5-((T_5-T_6)/n_t1);// K
p_3=p_2/((T_5/T_6a)^(r_g/(r_g-1)));// K
T_8a=T_7*(p_1/p_3)^((r_g-1)/r_g);// K
T_8=T_7-(n_t2*(T_7-T_8a));// K
T_x=T_4+((e*C_pg*(T_8-T_4))/C_pa);// K
W_net=C_pg*(T_7-T_8)*n_m;//Net Work available per kg of air in kJ/kg of air
Q_s=C_pg*((T_5-T_x)+(T_7-T_6));// Heat supplied per kg of air kJ/kg of air
m_f=Q_s/(CV*n_com);// The total mass of fuel in per kg of air flow
m=1/m_f;// Air fuel ratio
n_o=(W_net/(m_f*CV))*100;// Over all efficiency
m_a=(P*1000)/(W_net);// kg/sec
M_f=m_a*3600*m_f;// Mass of fuel used per hour in kg/hr
Sfc=M_f/(P*1000*1);// Specific fuel consumption in kg/kW-hr
printf('\nOver all efficiency of the plant=%0.1f percentage \nMass flow of air through the plant per second=%0.2f kg/sec \nSpecific fuel consumption=%0.3f kg/kW-hr',n_o,m_a,Sfc);
// The answer vary due to round off error
