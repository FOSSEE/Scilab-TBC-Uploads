// Example 13_3
clc;funcprot(0);
// Given data
Q_boiler=300;// W
p_1=20.0;// psia
p_2s=14.7;// psia
T_L=671.67;// R
T_H=687.67;// R

// Solution
// (a)
n_T_Carnot=(1-(T_L/T_H))*100;// %
W_net_Carnot=(n_T_Carnot/100)*Q_boiler;// watts
// (b)
// Station 1-Engine inlet
p_1=20.0;// psia
x_1=1.00;// The quality of steam at Station 1
h_1=1156.4;// Btu/lbm
s_1=1.7322;// Btu/lbm.R
// Station 2s-Engine exit
p_2s=14.7;// psia
s_2s=s_1;// Btu/lbm.R
s_f2=0.3122;// Btu/lbm.R
s_fg2=1.4447;// Btu/lbm.R
x_2s=(s_2s-s_f2)/s_fg2;// The quality of steam at Station 2s
h_f2=180.1;// Btu/lbm
h_fg2=970.4;// Btu/lbm
h_2s=h_f2+(x_2s*h_fg2);// Btu/lbm
// Station 3-Condenser exit
p_3=p_2s;// psia
x_3=0;// The quality of steam at Station 3
h_3=h_f2;// Btu/lbm
v_3=0.01672;/// ft^3/lbm
// Station 4s-Boiler inlet
p_4s=p_1;// psia
// s_4s=s_3;
n_T_max=((h_1-h_2s-(v_3*(p_4s-p_3)))*(144/118.16))/((h_1-h_3-(v_3*(p_4s-p_3)))*(144/118.16));// The isentropic efficiency of the system
n_T_max=n_T_max*100;// %
printf("\n(a)The Carnot cycle thermal efficiency,(n_T)_Carnot=%1.2f percentage \n   The net power output of the engine,W_net=%1.2f watts \n(b)The isentropic efficiency of the Rankine cycle,n_T_max=%1.2f percentage",n_T_Carnot,W_net_Carnot,n_T_max);
