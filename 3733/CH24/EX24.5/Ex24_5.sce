// Example 24_5
clc;funcprot(0);
//Given data
T_1=19+273;// K
p_1=100;//kN/m^2
p_2=800;// kN/m^2
n_c=0.85;// The isentropic efficiency of compressor
n_t=0.88;// The isentropic efficiency of turbine
n_pt=0.86;// The isentropic efficiency of power turbine
m=7;//Air flow rate in kg/s
T_3=980+273;// K
C_p=1.006;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
//(1)For the first turbine
// Compressor work= Turbine work
T_4=T_3-(T_2-T_1);// Turbine exit temperature in K
T_4a=T_3-((T_3-T_4)/(n_t));// K
p_3=p_2;// bar
p_4a=(p_3)/((T_3/T_4a)^(r/(r-1)));// kN/m^2
p_4=p_4a;//kN/m^2
//(2)For the power turbine
p_5=p_1;// bar
T_5a=T_4*(p_5/p_4)^((r-1)/r);// K
T_5=T_4-(n_pt*(T_4-T_5a));// K
P=(m*C_p*(T_4-T_5));// kW
n_th=(C_p*(T_4-T_5))/(C_p*(T_3-T_2));// Thermal efficiency
printf('\n1.The condition of air at the exit of the first turbine:T_4=%0.0f K & p_4=%0.0f kN/m^2 \n2.The power output of the turbine=%0.0f kW\nThe thermal efficiency of the plant=%0.3f or %0.1f percentage',T_4,p_4,P,n_th,n_th*100 );
// The answer vary due to round off error
