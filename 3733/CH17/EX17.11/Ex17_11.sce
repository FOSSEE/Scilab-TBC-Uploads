// Example 17_11
clc;funcprot(0);
//Given data
m_s=30*10^3;// kg/hr
x=90/100;// Dryness fraction
v=1.5;// Water speed in m/s
d_o=2;// cm
t=1.2;// mm
T_wi=15;// °C
T_wo=25;// °C
U_o=3000;// W/m^2°C
P_abs=0.04;//bar
C_pw=4.2;// kJ/kg.k

//Calculation
T_s=28.6// The saturation temperature of steam at 0.04 bar in °C
h_fg=2440;// kJ/kg (from steam tables)
//Total heat lost by steam power=Total heat gained by water
m_w=(m_s*h_fg*x)/(C_pw*(T_wo-T_wi));// kg/hour
Theta_i=T_s-T_wi;// °C
Theta_o=T_s-T_wo;// °C
LMTD=(Theta_i-Theta_o)/(log(Theta_i/Theta_o));//Logrithemic mean temperature difference in °C
A=((m_w*h_fg*x)/3600)/(U_o*LMTD);// m^2
d_i=(d_o*10)-(2*t);// mm
T_a=(T_wi+T_wo)/2;
// For T_a=20°C,
rho=998.2;// Density in kg/m^3
n=(m_w/((%pi/4)*(d_i/(10*100))^2*rho*3600));// The number tubes of tubes in one pass
Tn=2*n;// Total number of tubes in both passes
L=A/(%pi*(d_o/100)*Tn);// The length of each tube in m
printf('\nThe surface area required,A=%0.1f m^2\nThe number of tubes in each pass,n=%0.0f\nThe length of each tube,L=%0.2f m',A,n,L);
// The answer provided in the textbook is wrong

