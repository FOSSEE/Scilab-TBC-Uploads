// Example 24_7
clc;funcprot(0);
//Given data
p_r=6.5// Pressure ratio
T_1=300;// K
p_1=1;// bar
T_5=850;// K
P=10;//The power plant capacity in MW
CV=45000;// kJ/kg
r=1.4;// Spcific heat ratio for air and gases
C_p=1;// kJ/kg-k for air and gases
C_pg=C_p;

//Calculation
p_2=p_1*p_r;// bar
p_i=sqrt(p_1*p_2);//The required intermediate pressure in bar
T_2=T_1*(p_i/p_1)^((r-1)/r);// K
T_7=T_1*(p_2/p_1)^((r-1)/r);// K
T_3=T_1;// K
T_4=T_1*(p_2/p_i)^((r-1)/r);// K
W_wi=2*C_p*(T_2-T_1);//The workdone per kg of air with perfect inter cooling in kJ/kg
W_woi=C_p*(T_7-T_1);//The workdone per kg of air without inter cooling in kJ/kg
W_s=W_woi-W_wi;// Work saved per kg of air compressed due to intercooling in kJ/kg
// Assume m=m_a/m_f
m=(CV/(C_pg*(T_5-T_4)))-1;
T_6=T_5*(p_1/p_2)^((r-1)/r);// K
W_e=C_pg*(T_5-T_6);// Work done per kg of exhaust gases in turbine in kJ/kg
//When 1 kg of fuel used,m_f=1
m_a=m*1;// The mass of air supplied in kg
W_net=((1+m_a)*W_e)-(m_a*W_wi);// Net work available in kJ/kg of fuel
m_f=(P*10^3)/W_net;// kg /sec
m_f=m_f*3600;// kg/hr
W_si=W_s*m_f*m_a;// kJ/hr
W_si=W_si/3600;// kJ/hr
P_woi=P-(W_si/1000);// MW
n_th=((((m+1)*(T_5-T_6))-(2*m*(T_2-T_1)))/((m+1)*(T_5-T_4)))*100;// Thermal efficiency of the plant
printf('\n Thermal efficiency of the plant=%0.1f percentage \n Fuel consumption per hour=%0.1f kg/hr \n Work saved per hour due to inter cooling=%0.0f kW',n_th,m_f,W_si);
// The answer provided in the textbook is wrong
