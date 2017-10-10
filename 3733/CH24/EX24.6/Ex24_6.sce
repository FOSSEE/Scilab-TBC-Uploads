// Example 24_6
clc;funcprot(0);
//Given data
T_1=288;// K
p_1=1.03;// bar
p_2=6;// bar
p_3=p_2-0.1;// bar
n_c=80/100;// The isentropic efficiency of compressor
n_t=n_c;// The isentropic efficiency of turbine
n_com=90/100;// Combustion efficiency 
W=1.1*1000;// kW
m=7;//Air flow rate in kg/s
T_3=750+273;// K
//C_p=C_pa=C_pg
C_p=1.0;// kJ/kg.K
r=1.4;// Specific heat ratio
CV=20000;// kJ/kg

//Calculation
//Applying isentropic law to the process 1-2
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=T_1+((T_2a-T_1)/n_c);// K
// m=m_a/m_f
m=((CV*n_com)/(T_3-T_2))-1;
//Applying isentropic law to the process 3-4'
T_4a=T_3/((p_3/p_1)^((r-1)/r));// K
T_4=T_3-(n_t*(T_3-T_4a));//K
m_a=W/(((1+(1/m))*C_p*(T_3-T_4))-(C_p*(T_2-T_1)));// kg/sec
m_f=m_a/37;// kg/sec
m_g=m_a+m_f;// kg/sec
W_t=m_g*C_p*(T_3-T_4);// kW
W_r=W/W_t;// Work ratio
n_th=W/(m_g*C_p*(T_3-T_2));// Thermal efficiency of the plant
printf('\n(i)Flow of air and flow of gases per second,m_a=%0.1f kg/sec & m_g=%0.2f kg/sec \n(ii)Work ratio=%0.4f \n(iii) Thermal efficiency of the plant=%0.3f (or)%0.1f percentage',m_a,m_g,W_r,n_th,n_th*100);
// The answer vary due to round off error
