// Example 12_13
clc;funcprot(0);
// Given data
V_a1=2000;// ft^3/min
T_DB1=50.0+459.67;// R
phi_1=80.0/100;// The relative humidity
V_a2=1000;// ft^3/min
T_DB2=100.0+459.67;// R
phi_2=40.0/100;// The relative humidity
R_a=53.34;// ft.lbf/(lbm.R)
p_m=14.7// lbf/in^2

// Calculation
p_sat1=0.178;// psia
p_w1=phi_1*p_sat1;// psia
p_a1=p_m-p_w1;// lbf/in^2
v_a1=(R_a*T_DB1)/(p_a1*144);// ft^3/(lbm dry air)
p_sat2=0.9503;// psia
p_w2=phi_2*p_sat2;// psia
p_a2=p_m-p_w2;// lbf/in^2
v_a2=(R_a*T_DB2)/(p_a2*144);// ft^3/(lbm dry air)
m_a1=V_a1/v_a1;// lbmdry air/min
m_a2=V_a2/v_a2;// lbmdry air/min
m_a3=m_a1+m_a2;// lbmdry air/min
// Then, from the psychrometric chart (Chart D.5), we find
w_1=44/7000;// lbm water vapor/(lbm dry air)
w_2=115/7000;// lbm water vapor/(lbm dry air)
h_1=19;// Btu/(lbm dry air)
h_2=42;// Btu/(lbm dry air)
w_3=((m_a1/m_a3)*w_1)+((m_a2/m_a3)*w_2);// grains of water vapor/(lbm dry air)
h_3=((m_a1/m_a3)*h_1)+((m_a2/m_a3)*h_2);// Btu/(lbm dry air)
// From the point where the lines ω = 65.8 grains/(lbm dry air) = constant and h = 26 Btu/(lbm dry air) = constant intersect on the psychrometric chart, we can read from this chart that
T_DB=63;// °F
T_WB=59;// °F
phi=75;// %
T_DP=56;// °F
printf("\nThe dry bulb temperature of the outlet mixture,T_DB=%2.0f°F \nThe relative humidity of the outlet mixture,phi=%2.0f percentage",T_DB,phi);
