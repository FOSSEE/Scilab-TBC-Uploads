// Example 10_4
clc;funcprot(0);
// Given data
m=1.00;// kg
T_0=20.0;// °C
p_0=0.101;// MPa
T_s=130.0+273;// K
x_1=0.00;// The quality of steam at state 1
T_1=120.0;// °C
x_2=0.500;// The quality of steam at state 1

// Calculation
// State 1
x_1=0;// The quality of steam at state 1
T_1=120.0+273;// K
v_f=0.001060;// m^3/kg
v_1=v_f;// m^3/kg
u_f=503.5;// kJ/kg
u_1=u_f;// kJ/kg
s_f=1.5280;// kJ/kg.K
s_1=s_f;// kJ/kg.K
// State 2
x_2=0.500;// The quality of steam at state 2
p_sat=198.5;// kN/m^2
p_1=p_sat;// kN/m^2
p_2=p_1;// kN/m^2
v_2=0.44648;// m^3/kg
u_2=1516.4;// kJ/kg
s_2=4.3292;// kJ/kg.K
// Ground state
T_0=20.0+273;// K
p_0=0.101;// MPa
a_2minusa_1=(u_2-u_1)+(p_0*10^3*(v_2-v_1))-(T_0*(s_2-s_1));// kJ/kg
W_12=m*p_2*(v_2-v_1);// kJ
Q_12=(m*(u_2-u_1))+W_12;// kJ
I_12=((1-(T_0/T_s))*Q_12)-W_12+(p_0*10^3*(v_2-v_1));// kJ
printf("\nThe irreversibility of the process,I_12=%2.1f kJ",I_12)
// The answer provided in the textbook is wrong
