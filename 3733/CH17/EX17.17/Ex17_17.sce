// Example 17_17
clc;funcprot(0);
//Given data
m_s=250;// tons/hr
T_s=40;// °C
T_wi=30;//°C
T_wo=36;//°C
U_o=2.5;//kW/m^2°C
P_t=0.078;// bar
v=1.8;// m/s
d_i=23;// mm
d_o=25;// mm
rho_w=1000;// kg/m^3
moisture=12;// Percentage
x_2=(100-12)/100;// Dryness fraction
p_t=0.078;// bar
C_pw=4.2;// kJ/kg.°C
R=287;// J/kg°C
v=1.8;// m/s

//Calculation
//From steam tables,at 40°C\
p_sat=0.074;//bar
h_fg2=2407;// kJ/kg
v_g2=19.54;// m^3/kg
//gradh=H_2-h_3
gradh=x_2*h_fg2;// kJ/kg
m_s=(250*1000)/3600;// kg/sec
m_w=(m_s*gradh)/(C_pw*(T_wo-T_wi));// kg/sec
p_air=p_t-p_sat;// bar
v_s2=x_2*v_g2;// m^3/kg
m_a=(m_s*v_s2*p_air*10^5)/(R*(T_s+273));// kg/sec
Theta_i=(T_s-T_wi);// °C
Theta_o=(T_s-T_wo);// °C
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
A_s=(m_s*gradh)/(U_o*LMTD);// m^2
n=(m_w)/((%pi/4)*(d_i/1000)^2*rho_w*v);// Number of tubes 
L=A_s/(%pi*(d_o/1000)*n);// Length in m
printf('\nQuantity of water circulation=%0.0f kg/sec \nAir leakage in the condenser=%0.2f kg/sec \nThe length of each tube,L=%0.1f m \nNumber of condenser tubes,n=%0.0f',m_w,m_a,L,n);
// The answer vary due to round off error
