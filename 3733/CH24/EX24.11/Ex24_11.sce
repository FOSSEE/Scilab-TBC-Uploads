// Example 24_11
clc;funcprot(0);
//Given data 
P=5;// Power plant capacity in MW
T_1=27+273;// K
p_1=1;// bar
T_4=1000;// K
p_r=5;// Pressure ratio
n_c=0.85;// Isentropic efficiency of compressor
n_t=0.90;// Isentropic efficiency of turbine
n_com=0.95;// Combustion efficiency
n_m=0.95;// Mechanical efficiency
n_g=0.92;// Generation efficiency
Tl=10;// Transmission losses
CV=40000;// kJ/kg
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r=1.4;// Specific heat ratio
m=80;// Air fuel ratio
Cf_t=5000;// Cost of fuel in Rs./tonne
Oc=5000;// All other charges in rupees

//Calculation
n_tt=(1-(Tl/100));// Transmission efficiency
p_2=p_1*p_r;// bar
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_5a=T_4*(p_1/p_2)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
e_g=P*1000;// The energy generated per second in kJ/sec
m_a=(e_g)/((((1+(1/m))*C_pg*(T_4-T_5))-(C_pa*(T_2-T_1)))*n_m*n_g*n_tt);// kg/sec
T_3=T_4-((CV*n_com)/(C_pg*(m+1)));// K
e=(C_pa*(T_3-T_2))/(C_pg*(1+(1/m))*(T_5-T_2));// Effectiveness of regenerator
Fc=(m_a*3600*(1/m));// The fuel consumption per hour in kg/hr
Cf=(Fc/1000)*Cf_t;// Cost of fuel per hour in Rs.
Tc=Cf+Oc;// Total cost to be charged per hour in Rs.
E_g=e_g*1;// Energy generated in kW-hr
Ce=Tc/E_g;// Charges of energy per kW-hr in Rs./kWh
printf('\nThe mass of air flow through the compressor per second=%0.2f kg/sec \nThe effectiveness of regenerator=%0.3f \nThe charges of energy per kW-hr=Rs.%0.2f/kWh',m_a,e,Ce);
// The answers provided in the textbook is wrong
