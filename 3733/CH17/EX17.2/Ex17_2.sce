// Example 17_2
clc;funcprot(0);
//Given data
P_1=100;// bar
T_1=400;// °C
T_wi=20;// °C
P_v=71;// cm of Hg
P_b=76;//cm of Hg
gradT=10;// Rise in temperature of the cooling water in °C
rho_w=1080;// kg/m^3
C_pw=4.6;//kJ/kg.°C
U=400;// The over all heat transfer coefficient in W/m^2.°C
P=30;// kW

//Calculation
P_2=(P_b-P_v)*0.01359;// The pressure in the condenser in bar
// From h-s chart,
h_1=3389;// kJ/kg
h_2=2054;//kJ/kg
m_s=(P*1000)/(h_1-h_2);// Mass of steam in kg/sec
x_2=0.782;// dryness fraction from h-s chart
// Heat lost by steam in condenser = Heat gained by water
h_f2=159.6;//kJ/kg
m_w=((h_2-h_f2)*m_s)/(C_pw*gradT);// kg/sec
CP=m_w;// Capacity of the pump in kg/sec
Theta_i=(38-20);//°C
Theta_o=(38-30);//°C
LMTD=(Theta_i-Theta_o)/log(Theta_i/Theta_o);//°C
A=((h_2-h_f2)*m_w)/(U*LMTD);// The heat transfer area of the condenser in m^2
printf('\n(a)The mass of steam supplied to the turbine,m_s=%0.1f kg/sec \n(b)Capacity of the pump=%0.1f kg/sec \n(c) The heat transfer area of the condenser=%0.1f m^2',m_s,m_w,A);
// The answer vary due to round off error
