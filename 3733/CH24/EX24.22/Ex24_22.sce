// Example 24_22
clc;funcprot(0);
//Given data 
T_1=290;// K
p_1=1.01;// bar
T_3=650+273;// K
p_r=8;// Pressure ratio
n_c=0.8;// Isentropic efficiency of compressor
n_t1=0.85;// Isentropic efficiency of H.P turbine
n_t2=0.83;// Isentropic efficiency of L.P turbine
C_pa=1;// kJ/kg.K
C_pg=1.15;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
m_a=10;// The  air flow through the compressor in kg/sec

//Calculation
p_2=p_1*p_r;// bar
T_2a=T_1*(p_r)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
W_c=1*C_pa*(T_2-T_1);//Work input to the compressor in kJ/kg
W_t1=W_c;// kJ/kg
T_4=T_3-(W_t1/C_pg);// K
T_4a=T_3-((T_3-T_4)/n_t1);// K
p_3=p_2/((T_3/T_4a)^(r_g/(r_g-1)));// bar
p_re=p_3/p_1;// The pressure ratio of expansion in the power turbine 
T_5a=T_4/(p_3/p_1)^((r_g-1)/r_g);// K
dT_45=n_t2*(T_4-T_5a);// (dT_45=T_4-T_5) K
W_t2=C_pg*(dT_45);//Work developed by power turbine in kJ/kg
W_net=W_t2;// The net work done per kg of air in kJ/kg
W_t=W_t1+W_t2;// Total work done per in kJ/kg
W_r=W_t2/W_t;// Work ratio
Q_s=C_pa*(T_3-T_2);// kJ/kg
n_th=(W_t2/Q_s)*100;// Thermal efficiency in %
P=W_t2*m_a;// Power capacity of the plant in kW
printf('\nThe power developed by the unit=%0.0f kW \nThe thermal efficiency=%0.0f percentage \nWork ratio=%0.1f',P,n_th,W_r);
// The answer vary due to round off error
