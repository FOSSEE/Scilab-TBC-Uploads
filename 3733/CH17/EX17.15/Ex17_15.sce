// Example 17_15
clc;funcprot(0);
//Given data
m_s=300;// tons/hour
P_c=0.04;// bar
x=0.9;// Dryness fraction
U=3;// KJ/m^2-°C
T_wi=15;// The inlet temperature of water in °C
T_wo=25;//The outlet temperature of water in °C
d_i=17.6;// mm
d_o=20;// mm
v=2.5;// The water speed in the condenser in m/sec
rho=1000;// Density of water in kg/m^3
C_pw=4.2;// kJ/kg.°C

//Calculation
//From steam tables at 0.04bar,
T_s=28.6;//°C
h_fg=2433;// kJ/kg
m_s=(m_s*1000)/3600;// kg/sec
m_w=(m_s*h_fg*x)/(C_pw*(T_wo-T_wi));// kg/sec
Theta_i=(T_s-T_wi);// °C
Theta_o=(T_s-T_wo);// °C
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
Q=m_s*h_fg*x;// kJ/sec
A=(Q/(U*LMTD));//m^2
n_1=m_w/((%pi/4)*(d_i/1000)^2*v*rho);// Number of tubes in each pass
n=n_1*2;// Total number of tubes in both passes
L=A/(%pi*(d_o/1000)*n);// Length of each tube in m
printf('\nThe number of tubes in one pass=%0.0f\nLength of each tube =%0.2f m',n_1,L);// The answer provided in the textbook is wrong
// The answer vary due to round off error

