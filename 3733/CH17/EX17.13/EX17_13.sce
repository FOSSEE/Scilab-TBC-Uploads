// Example 17_13
clc;funcprot(0);
//Given data
m_s=5000;// kg
T_s=50;// °C
d_i=15;// mm
d_o=18;// mm
Theta_o=20;// °C
T_r=10;//°C
Theta_i=Theta_o+T_r;// °C
L=3;// Length in m
v=2;// Velocity in m/s
h_o=5000;// J/m^2-s-°C
h_i=3200;// J/m^2-s-°C
f_i=0.0002;// m^2-°C/W
K=80;// W/m-°C

//Calculation
// At 50°C saturated temperature
h_fg=2383;// kJ/kg
Q=(m_s*h_fg)/3600;//kW
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));// °C
U_o=1/((((1/h_i)+f_i)*(d_o/d_i))+(1/h_o)+(((d_o-d_i)/(d_o+d_i))*(d_o/(1000*K))));// W/m^2°C
A=((Q*10^3)/(U_o*LMTD));// m^2
n=(A/(%pi*(d_o/1000)*L));
printf('\nThe number of tubes required=%0.0f',n);
// The answer vary due to round off error
