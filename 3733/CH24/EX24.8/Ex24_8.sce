// Example 24_8
clc;funcprot(0);
//Given data 
p_1=1;// bar
p_2=5;// bar
p_i=2.5;// bar
T_1=27+273;// K
T_3=900;// K
T_5=T_3;// K
r=1.4;// Specific heat ratio
CV=40000;// kJ/kg
r=1.4;// Spcific heat ratio for air and gases
C_p=1;// kJ/kg-k for air and gases
m_a=10;// kg/sec
C_pg=C_p;
C_pa=C_p

//Calculation
T_2=T_1*(p_2/p_1)^((r-1)/r);// K
T_4=T_3*(p_i/p_2)^((r-1)/r);// K
T_6=T_5*(p_1/p_i)^((r-1)/r);// K
m_f1=1/((CV/(T_3-T_2))-1);// kg/kg of air
m_f2=1/((CV/(T_5-T_4))-(1+m_f1));// kg/kg of air
W_net=(C_pg*(1+m_f1)*(T_3-T_4))+(C_pg*(1+m_f1+m_f2)*(T_5-T_6))-(C_pa*(T_2-T_1));//Net work done per kg of air flow in kJ/kg of air
Q_net=(m_f1+m_f2)*CV;// Net heat supplied per kg of air passing through the system in kJ.
n_th=(W_net/Q_net)*100;// Thermal efficiency in %
P=m_a*W_net;// Capacity of the plant in kW
printf('\nThermal efficiency=%0.1f percentage \nPlant capacity=%0.1f MW',n_th,P/10^3);
// The answer vary due to round off error
