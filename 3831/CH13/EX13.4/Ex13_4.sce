// Example 13_4
clc;funcprot(0);
// Given data
D=40.0;// inch
L=10.0;// ft stroke
W_actual=1400;// hp
n=36.0;// rpm
n_s_p=0.650;// The isentropic efficiency of a pump
n_s_pm=0.550;// The isentropic efficiency of an engine 
d_fw=30.0;// The diameter of the flywheel in ft
w=56.0;/// tons

// Calculation
// (a)
// Station 1-Engine inlet
p_1=100.0;// psia
x_1=1.00;// The quality of steam at Station 1
h_1=1187.8;// Btu/lbm
s_1=1.6036;// Btu/lbm.R
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
v_3=0.01672;// ft^3/lbm
// Station 4s-Boiler inlet
p_4s=p_1;// psia
// s_4s=s_3;
n_T_max=((h_1-h_2s-(v_3*(p_4s-p_3)))*(144/118.16))/((h_1-h_3-(v_3*(p_4s-p_3)))*(144/118.16));// The maximum isentropic efficiency of the system
n_T_max=n_T_max*100;// %
// (b)
n_T_Rankine=(((h_1-h_2s)*n_s_pm)-((v_3*(p_4s-p_3)/n_s_p)*(144/118.16)))/((h_1-h_3)-((v_3*(p_4s-p_3)/n_s_p)*(144/118.16)));// The isentropic efficiency of the Rankine system
n_T_Rankine=n_T_Rankine*100;// %
// (c)
mdot=(W_actual*2545)/((h_1-h_2s)*n_s_pm);// lbm/h
printf("\n(a)The maximum isentropic efficiency of the Rankine system,(n_T)_maximum Rankine=%2.1f percentage \n(b)The isentropic efficiency of the Rankine system,(n_T)_Rankine=%1.2f percentage \n(c)The mass flow rate of steam required,mdot=%5.0f lbm/h",n_T_max,n_T_Rankine,mdot);
