// Example 17_14
clc;funcprot(0);
//Given data
P=120;//Plant capacity in MW
p_1=150;// bar
T_1=600;// °C
p_2=0.08;// bar
h_i=1000;// Heat transfer coefficient of water side in W/m^2 °C
h_o=5000;// Heat transfer coefficient of steam side in W/m^2 °C
T_wi=25;// The inlet temperature of water in °C
T_wo=35;//The outlet temperature of water in °C
d_i=2.5;// cm
d_o=2.9;// cm
L=5;// Length of the tube in m'

//Calculation
// From steam tables,the saturation temperature of the steam at 0.08 bar
T_c=41.5;//The condensate temperature in °C
h_f2=174;// kJ/kg
//From h-s chart,
h_1=3580;// kJ/kg
h_2=2080;// kJ/kg
m_s=((P*1000)/(h_1-h_2));// The mass of steam flowing through the turbine in kg/sec
Q=m_s*(h_2-h_f2);
U_o=1/(((1/h_i)*(d_o/d_i))+(1/h_o));// Overall heat transfer coefficient referred to outer surface of the tubes in W/m^2 °C
Theta_i=(T_c-T_wi);// °C
Theta_o=(T_c-T_wo);// °C
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
A_s=(Q/(U_o*LMTD));//m^2
n=(A_s/(%pi*(d_o/100)*L));
printf('The number of tubes required=%0.0f tubes',n);
// The answer provided in the textbook is wrong
