// Example 24_14
clc;funcprot(0);
//Given data 
P=800;// Plant capacity in kW
T_1=15+273;// K
p_1=1.01;// bar
T_4=700+273;// K
p_r=6;// Pressure ratio
e=0.75;// The effectiveness of regenerator
p_lr=0.15;// Pressure drop in regenerator in bar
p_lcc=0.15;//  Pressure drop in the combustion chamber in bar
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine
C_p=1;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation
p_2=p_r*p_1;// bar
p_3=p_2-p_lcc;// Pressure at point 4 in bar
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
p_4=p_1+p_lr;// bar
T_5a=T_4/(p_3/p_4)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
T_3=T_2+(e*(T_5-T_2));// K
W_c=C_p*(T_2-T_1);// kJ/kg
W_t=C_p*(T_4-T_5);// kJ/kg 
W_n=W_t-W_c;// kJ/kg 
Q_s=C_p*(T_4-T_3);// kJ/kg 
n_th=(W_n/Q_s)*100;// Thermal Efficiency in percentage
printf('\nThe thermal efficiency of the plant=%0.1f percentage',n_th);
