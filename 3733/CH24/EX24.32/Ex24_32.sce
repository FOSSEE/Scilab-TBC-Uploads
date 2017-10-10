// Example 24_32
clc;funcprot(0);
//Given data 
T_1=15+273;// K
p_1=1;// bar
p_r=6;// Pressure ratio
T_4=750+273;// K
e=0.75;// Effectiveness of heat exchanger 
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine
C_pa=1;// kJ/kg.K
C_pg=1;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
p_2=p_1*p_r;// bar
p_3=sqrt(p_1*p_2);// bar
p_r1=p_2/p_3;// Pressure ratio
p_r2=p_r1;
T_5a=T_4/(p_r1)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
T_6=T_4;// K
T_7=T_5;// K
T_3=T_2+(e*(T_7-T_2));// K
W_c=C_pa*(T_2-T_1);// The work of compression in kJ/kg
W_t=2*C_pg*(T_4-T_5);// The work developed by both turbines in kJ/kg
W_n=W_t-W_c;// Net work in kJ/kg
Q_1=C_pg*(T_4-T_3);// kJ/kg
Q_2=C_pa*(T_6-T_5);// kJ/kg
Q_s=Q_1+Q_2;// The total heat supplied in kJ/kg
W_r=W_n/W_t;// Work ratio
n_p=(W_n/Q_s)*100;// The plant efficiency in %
printf('\nEfficiency of the plant=%0.1f percentage \nWork ratio=%0.4f',n_p,W_r);
// The answer vary due to round off error

