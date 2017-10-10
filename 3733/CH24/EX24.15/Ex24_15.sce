// Example 24_15
clc;funcprot(0);
//Given data 
m_a=10;// kg/sec
p_r=6;// Pressure ratio
T_1=300;// K
p_1=1;// bar
T_6=1073;// K
e=0.75;// The effectiveness of regenerator
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine
C_pa=1;// kJ/kg.K
r=1.4;// Specific heat ratio
m=1;// kg

//Calculation
p_3=p_1*p_r;// bar
p_2=sqrt(p_1*p_3);// bar
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
//W_c=W_c1+W_c2=2*W_c1 (as intercooling is perfect)
W_c=2*m*C_pa*(T_2-T_1);// kJ/kg
// As T_3=T_1 and p_r=(p_2/p_1)=(p_3/p_2)
T_4=T_2;// K
T_7a=T_6/(p_3/p_1)^((r-1)/r);// K
T_7=T_6-(n_t*(T_6-T_7a));// K
W_t=C_pa*(T_6-T_7);// kJ/kg
T_5=T_4+(e*(T_7-T_4));// K
Q_s=m*C_pa*(T_6-T_5);// kJ/kg 
W_n=W_t-W_c;// kJ/kg 
P=m_a*W_n;//Power capacity of the plant in kW
n_th=(W_n/Q_s)*100;// Thermal Efficiency in percentage
printf('\nPower capacity of the plant=%0.0f kW\nThe thermal efficiency of the plant=%0.1f percentage',P,n_th);
// The answer vary due to round off error
