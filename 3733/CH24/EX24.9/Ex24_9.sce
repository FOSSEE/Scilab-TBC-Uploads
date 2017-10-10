// Example 24_9
clc;funcprot(0);
//Given data 
W=2;// Work done in MW
p_1=1;// bar
p_r=5;// Pressure ratio in bar
p_i=2.5;// bar
T_1=27+273;// K
r=1.4;// Specific heat ratio
CV=40000;// kJ/kg
n_c=85/100;// The isentropic efficiency of the compressor
n_t=85/100;//  The isentropic efficiency of the turbine
Q_a=80;// Heat absorbed in kJ/kg of air
m_f=0.01;// kg per kg of air
m_a=1;// kg
r=1.4;// Spcific heat ratio for air and gases
C_p=1;// kJ/kg-k for air and gases
C_pg=C_p;
C_pa=C_p

//Calculation
T_2a=T_1*(p_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_3=T_2+(Q_a/(C_pa*m_a));// K
T_4=((m_f*CV)/((1+m_f)*C_p))+T_3;// K
T_5a=T_4*(1/p_r)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
n_th=(((T_4-T_5)-(T_2-T_1))/(T_4-T_3))*100;// Thermal efficiency in %
Q=(W*10^3)/(n_th/100);//Heat supplied in kJ/sec
F=(Q/CV)*3600;// Fuel required per hour in kg/hr
n_cp=(1-(1/(p_r)^((r-1)/r)))*100;//Efficiency of normal constant pressure cycle
printf('\nThe thermal efficiency of the plant=%0.1f percentage \nEfficiency of normal constant pressure cycle=%0.0f percentage \nFuel consumption per hour=%0.0f kg/hr',n_th,n_cp,F);
// The answer provided in the textbook is wrong
