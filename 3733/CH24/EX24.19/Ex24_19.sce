// Example 24_19
clc;funcprot(0);
//Given data 
P=5;// Power plant capacity in MW
T_1=30+273;// K
p_1=1;// bar
T_3=550+273;// K
p_r=5;// Pressure ratio
p_3=2.24;// bar
n_c=0.8;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of both turbines
n_t1=n_t;
n_t2=n_t;
C_pa=1;// kJ/kg.°C
C_pg=1.15;// kJ/kg.°C
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases

//Calculation
p_2=p_1*p_r;// bar
T_5=T_3;// K
T_2a=T_1*(p_2/p_1)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
W_c=C_pa*(T_2-T_1);// kJ/kg
T_4a=T_3/(p_2/p_3)^((r_g-1)/r_g);// K
T_4=T_3-(n_t1*(T_3-T_4a));// K
T_6a=T_5/(p_3/p_1)^((r_g-1)/r_g);// K
T_6=T_5-(n_t2*(T_5-T_6a));// K
W_t=2*C_pg*(T_3-T_4);// kJ/kg
W_n=W_t-W_c;// kJ/kg
m_a=((P*10^3)/W_n);// kg/sec
Q_s=(C_pg*(T_3-T_2))+(C_pg*(T_5-T_4));// kJ/kg
n_o=(W_n/Q_s)*100;// Over all efficiency in %
printf('\nThe over all efficiency=%0.0f percentage \nThe mass flow rate=%0.1f kg/sec',n_o,m_a);
// The answers provided in the textbook is wrong
