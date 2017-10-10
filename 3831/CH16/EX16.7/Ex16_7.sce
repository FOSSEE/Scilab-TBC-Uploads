// Example 16_7
clc;funcprot(0);
// Given data
D_bag=3.00;// ft
t_fill=30;// milliseconds
p_air=15.00;// psia
p_os=1500;// psia
T_os=70.0+459.67;// R
k=1.40;// The specific heat ratio
R_air=53.34;// ft.lbf/lbm.R

// Solution
V_bag=(%pi*D_bag^3)/6;// ft^3
T_air=T_os*(2/(k+1));// R
rho_air=(p_air*144)/(R_air*T_air);// lbm/ft^3
m_avg=(rho_air*V_bag)/(t_fill*10^-3);// lbm/s
D_tube=[(4*m_avg*sqrt(T_os+459.67))/(0.532*%pi*p_os)]^(1/2);// in
printf("\nThe minimum tube diameter,D_tube=%1.2f in",D_tube);
// The answer vary due to round off error
