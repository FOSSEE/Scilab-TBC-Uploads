// Example 24_33
clc;funcprot(0);
//Given data 
p_1=1;// bar
p_2=9;// bar
T_1=25+273;// K
T_6=1250+273;// K
e=0.83;// The effectiveness of regenerator
n_c=0.83;// Isentropic efficiency of  both compressors
n_t=0.83;// Isentropic efficiency of both turbines
n_com=0.95;// Combustion efficiency
CV=42;// MJ/kg
C_p=1;// kJ/kg.K
r=1.4;// Specific heat ratio for air and gases

//Calculation
T_8=T_6;// K
n_c1=n_c;
n_c2=n_c;
n_t1=n_t;
n_t2=n_t;
p_i=sqrt(p_1*p_2);// bar
T_2a=T_1*(p_i/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_3=T_1;// K
T_4=T_2;// K
T_7a=T_6/(p_2/p_i)^((r-1)/r);// K
T_7=T_6-(n_t1*(T_6-T_7a));// K
T_8=T_6;// K
T_9=T_7;// K
T_5=T_2+(e*(T_9-T_4));// K
W_c=2*C_p*(T_2-T_1);// The work developed by  both compressors in kJ/kg
W_t=2*C_p*(T_6-T_7);// The work developed by both turbines in kJ/kg
W_n=W_t-W_c;// Net work in kJ/kg
W_r=W_n/W_t;// Work ratio
Q_1=C_p*(T_6-T_5);// kJ/kg
Q_2=C_p*(T_8-T_7);// kJ/kg
Q_s=Q_1+Q_2;// The total heat supplied in kJ/kg
n=(W_n/Q_s)*100;// The plant efficiency in %
printf('\nThermal efficiency of the plant=%0.0f percentage \nWork ratio=%0.2f',n,W_r);
// The answer provided in the textbook is wrong
