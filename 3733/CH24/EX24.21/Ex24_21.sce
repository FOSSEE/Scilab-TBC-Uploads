// Example 24_21
clc;funcprot(0);
//Given data 
T_1=25+273;// K
p_1=1;// bar
T_6=1250+273;// K
p_3=9;// bar
n_c=0.83;// Isentropic efficiency of both compressors
n_c1=n_c;
n_c2=n_c;
n_t=0.83;// Isentropic efficiency of both turbines
n_t1=n_t;
n_t2=n_t;
C_pa=1;// kJ/kg.K
r=1.4;// Specific heat ratio
m_a=16.5;// kg/sec

//Calculation
p_2=sqrt(p_1*p_3);// bar
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c1)+T_1;// K
T_8=T_6;// K
T_4=T_2;// K
T_7a=T_6/(p_3/p_2)^((r-1)/r);// K
T_7=T_6-(n_t1*(T_6-T_7a));// K
T_9=T_7;// K
W_c=2*C_pa*(T_2-T_1);// kJ/kg
W_t=2*C_pa*(T_6-T_7);// kJ/kg
W_n=W_t-W_c;// kJ/kg
T_5=T_7;
//When the ideal regeneration is given,then
e=1;// Effectiveness
Q_s=2*C_pa*(T_6-T_5);// kJ/kg
//(i)
n_th=(W_n/Q_s)*100;//The thermal efficiency in %
//(ii)
P=W_n*m_a;// Power developed by the plant in kW
printf('\n(i)The thermal efficiency of the plant=%0.1f percentage \n(ii)Power developed by the plant=%0.2f kW',n_th,P);
// The answer vary due to round off error
