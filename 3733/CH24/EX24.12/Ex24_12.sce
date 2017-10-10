// Example 24_12
clc;funcprot(0);
//Given data 
P=10;// Power plant capacity in MW
T_1=300;// K
T_4=960;// K
e=0.7;// The effectiveness of regenerator
n_c=0.8;// Isentropic efficiency of compressor
n_t=0.90;// Isentropic efficiency of turbine
n_com=0.96;// Combustion efficiency
n_m=0.95;// Mechanical efficiency
n_g=0.95;// Generation efficiency
CV=40000;// kJ/kg
C_pa=1;// kJ/kg.K
r=1.4;// Specific heat ratio
Cf_t=4000;// Cost of fuel in Rs./tonne
Oc=3000;// All other charges in rupees
Q=90;// Heat developed in combustion chamber in %

//Calculation
p_r=(n_c*n_t*(T_4/T_1))^(r/(2*(r-1)));// Pressure ratio
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_5a=T_4*(1/p_r)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
m_a=(P*1000)/((C_pa*((T_4-T_5)-(T_2-T_1)))*n_com*n_g);
T_3=T_2+(e*(T_5-T_2));// K
m_f=(m_a*C_pa*(T_4-T_3))/(CV*n_com*(Q/100));// kg/sec
Cf=((m_f*3600)/1000)*Cf_t;// Cost of fuel in Rs./hr
Tc=Cf+Oc;// Total cost in Rs/hr
Ce=Tc/(P*1000);// Cost of energy generated in Rs/kWh
m=m_a/m_f;// Air-fuel ratio
printf('\nThe cost of energy generated=Rs.%0.2f/kWh',Ce);
// The answer vary due to round off error
