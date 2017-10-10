// Example 24_27
clc;funcprot(0);
//Given data 
T_1=21+273;// K
T_4=925+273;// K
n_c=0.86;// Isentropic efficiency of compressor
n_t1=0.85;// Isentropic efficiency of H.P turbine
n_t2=0.87;// Isentropic efficiency of L.P turbine
e=0.75;// Effectiveness of heat exchanger 
n_com=0.98;// Combustion efficiency
n_m=0.99;// Mechanical efficiency of compressor and H.P turbine assembly
P=2040;// kW
C_pa=1.005;// kJ/kg.K
r=1.4;// Specific heat ratio for air
m=1;// kg

//Calculation
// p_r=p_1/p_2;
p_r1=7;// Pressure ratio
T_2a=T_1*(p_r1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
W_c=1*C_pa*(T_2-T_1);//Work input to the compressor in kJ/kg
W_t1=W_c/n_m;// kJ/kg
T_5=T_4-(W_t1/(m*C_pa))// K
T_5a=T_4-((T_4-T_5)/n_t1);// K
p_r2=(T_4/T_5a)^(r/(r-1));// Pressure ratio(p_2/p_3)
p_r3=(1/p_r1)*(p_r2);// Pressure ratio(p_3/p_1)
T_6a=T_5*(p_r3)^((r-1)/r);// K
T_6=T_5-((T_5-T_6a)*n_t2);// K
T_3=T_2+(e*(T_6-T_2));// K
m_a=(P/(C_pa*(T_5-T_6)));// kg/sec
n_th=(P)/(m_a*C_pa*(T_4-T_3)*n_com)*100;// The thermal efficiency of the plant in %
printf('\nThe air flow rate=%0.2f kg/sec \nThe thermal efficiency of the plant=%0.1f percentage',m_a,n_th);
// The answer provided in the textbook is wrong
