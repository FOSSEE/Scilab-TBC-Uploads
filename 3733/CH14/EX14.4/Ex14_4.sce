// Example 14_4
clc;funcprot(0);
//Given data
m_g=1250;// The mass flow in the gases in kg/sec
m_a=1170;//The air flow rate in kg/sec
T_gi=450;// 
T_go=160;// Temperature of hot gases at inlet and outlet in °C
T_ai=35;// °C
d_i=60;// mm
d_o=65;// mm
U_o=30;//Over all heat transfer coefficient in W/m^2°C
V_g=13;// Gas velocity in m/sec
C_pg=1.1;// kJ/kg-°C
C_pa=1;// kJ/kg-°C
R_g=287;// J/kg-K
p=101.325;// kPa

//Calculation
v_gi=((R_g/1000)*(T_gi+273))/(p);//Specific volume of gas at entry in m^3/kg
T_ao=((m_g*C_pg*(T_gi-T_go))/(m_a*C_pa))+T_ai;//°C
Theta_i=(T_gi-T_ao);// °C
Theta_o=(T_go-T_ai);// °C
LMTD_counter=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
LMTD_actual=LMTD_counter*1.2;// °C
A=(m_g*C_pg*(T_gi-T_go)*10^3)/(U_o*LMTD_actual);// m^2
n=m_g/((%pi/4)*(d_i/1000)^2*(V_g/v_gi));// Number of tubes used in air heater
L=(A/(%pi*(d_o/1000)*n));// meters
printf('\nThe length,L=%0.0f m \nThe number of tubes used in air heater=%0.0f',L,n);
// The answer vary due to round off error
