// Example 24_3
clc;funcprot(0);
//Given data
T_1=288;// K
P_r=6;// P_r=p1/p2
T_3=1000;// K
m=2;// tonnes/hr
n_c=0.85;
n_t=0.90;//Isentropic efficiencies of the compressor and turbine
CV=46500;// kJ/kg
e=0.6;// The effectiveness of the heat exchanger
r=1.4;// Specific heat ratio
C_p=1;// kJ/kg.°C
//C_p=C_pg=C_pa

//Calculation
T_2a=T_1*(P_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4a=T_3/(P_r)^((r-1)/r);// K
T_4=T_3-(n_t*(T_3-T_4a));// K
W_c=C_p*(T_2-T_1);// kJ/kg
W_t=C_p*(T_3-T_4);// kJ/kg
Q_a=C_p*(T_3-T_2);// kJ/kg
n_th=((W_t-W_c)/Q_a)*100;//Cycle efficiency
W_s=W_t-W_c;// kJ/kg
P=((m*1000)/3600)*CV*n_th/100*n_t*n_c;// kW
P=P/1000;//MW
printf('\n Cycle efficiency=%0.1f percentage \nThe specific work output=%0.0f kJ/kg',n_th,W_s);
// The answer provided in the textbook is wrong
