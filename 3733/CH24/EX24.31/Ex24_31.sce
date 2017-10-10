// Example 24_31
clc;funcprot(0);
//Given data 
T_1=288;// K
p_1=1;// bar
R_c=2.5;// Pressure ratio of each compressor stage
R_c1=R_c;
R_c2=R_c;
T_3=300// K
T_5=1000;// K
W_2=100;// kW/kg of air
p_l1=0.2;// Pressure loss in air side of H.P and main combustion chamber in bar
p_l2=0.1;// Pressure loss in reheat combustion chamber in bar
p_l3=0.05;// Pressure loss in intercooler in bar
n_c=0.85;// Isentropic efficiency of compressor
n_c1=n_c;
n_c2=n_c;
n_t1=0.88;// Isentropic efficiency of turbine 1
n_t2=0.85;// Isentropic efficiency of turbine 2
m_a=5.85;// kg/sec
C_p=1;// kJ/kg.K
n_o=0.30;// The over all efficiency of the plant 
r=1.4;// Specific heat ratio

//Calculation
T_2=T_1+(T_1/n_c1)*(((R_c1)^((r-1)/r))-1);// K
p_2=R_c*p_1;// bar
p_3=p_2-p_l3;// bar
T_4=T_3+(T_3/n_c2)*(((R_c1)^((r-1)/r))-1);// K
p_4=p_3*p_2;// ba
T_1=T_3;
W_1=C_p*((T_2-T_1)+(T_4-T_3));//The work required to compress one kg of air in kJ/kg
n_m=1;// Mechanical efficiency (Assumed)
T_6=T_5-(W_1/C_p);// K
R_t1=1/(1-(((T_5-T_6)/(T_5*n_t1))))^(r/(r-1));// Pressure ratio in turbine 1
p_5=p_4-p_l1;// bar
p_6=p_5/R_t1;// bar
p_7=p_6-p_l2;// bar
T_7=T_5;// K
T_8=T_7-(W_2/C_p);// K
R_t2=1/(1-(((T_7-T_8)/(T_7*n_t2))))^(r/(r-1));// Pressure ratio in turbine 2
p_8=p_7/R_t2;// bar
p_m=p_8-p_1;// Maximum pressure loss in H.E towards gas side in bar
T_9=T_5-(((T_7-T_8)/(n_o))-(T_7-T_6));// K
e=(T_9-T_4)/(T_8-T_4);// The effectiveness of heat exchanger 
printf('\nThe effectiveness of heat exchanger=%0.3f \nMaximum pressure loss in H.E towards gas side=%0.2f bar',e,p_m);
// The answer vary due to round off error
