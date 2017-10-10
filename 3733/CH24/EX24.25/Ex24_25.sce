// Example 24_25
clc;funcprot(0);
//Given data
p_r=4.5;// Pressure ratio
m_a=82;// kg/min
m_f=1.4;// kg/min
W_o=200;// kW
W_c=230// kW
p_1=1;// bar
T_1=15+273;// K
T_3=765+273;// K
r_c=1.4;// The index of compression
r_e=1.34;// The index of expansion
C_pa=1;// kJ/kg.K
C_pg=1.13;// kJ/kg.K
n_m=0.98;// Mechanical efficiency of the compressor

//Calculation
W_t=(W_o+W_c)/n_m;// kW
m_a=(m_a)/60;// kg/sec
m_f=(m_f)/60;// kg/sec
AF=m_a/m_f;// Air fuel ratio
//(a)
T_2a=T_1*(p_r)^((r_c-1)/r_c);// K
n_c=(m_a*C_pa*((T_2a-T_1)/W_c))*100;// Isentropic efficiency of compressor in %
//(b)
T_4a=T_3/(p_r)^((r_e-1)/r_e);// K
n_t=(W_t/((m_a+m_f)*C_pg*(T_3-T_4a)))*100;// Isentropic efficiency of turbine in %
//(c)
T_2=T_1+((T_2a-T_1)/(n_c/100));// K
n_o=(W_o/((m_a+m_f)*C_pg*(T_3-T_2)))*100;// The over all efficiency of the plant in %
printf('\n(a)Isentropic efficiency of compressor=%0.0f percentage \n(b)Isentropic efficiency of turbine=%0.1f percentage \n(c) The over all efficiency of the plant=%0.1f percentage',n_c,n_t,n_o);
// The answers provided in the textbook is wrong
