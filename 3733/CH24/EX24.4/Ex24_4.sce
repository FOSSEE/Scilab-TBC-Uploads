// Example 24_4
clc;funcprot(0);
//Given data
p_1=101;//kN/m^2
p_2=606;//kN/m^2
e=0.65;//Effectiveness of regenerative heat exchanger
T_1=15+273;// K
n_c=0.85;// The compressor efficiency
n_t=0.80;// The turbine efficiency
m=4;// Air flow rate in kg/s
T_3=870+273;// K
// P_r=(P_1/P_2)=(P_3/P_4)
P_r=6;// Pressure ratio
C_p=1.005;// kJ/kg K
r=1.4;// Specific heat ratio

//Calculation
T_2a=T_1*(P_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4a=T_3/(P_r)^((r-1)/r);// K
T_4=T_3-(n_t*(T_3-T_4a));// K
P=m*C_p*((T_3-T_4)-(T_2-T_1));// kW
T_5=(e*(T_4-T_2))+T_2;// K
// T_4-T_6=T_5-T_2, neglecting,the weight of the fuel
T_6=T_4+T_2-T_5;// K
n_th1=(((T_3-T_4)-(T_2-T_1))/(T_3-T_5))*100;//%
n_th2=(((T_3-T_4)-(T_2-T_1))/(T_3-T_2))*100;// %
printf('\nEfficiency of the plant with regeneration=%0.1f percentage \nEfficiency without heat exchanger=%0.1f percentage',n_th1,n_th2);
// The answer provided in the textbook is wrong
