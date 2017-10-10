// Example 13_6
clc;funcprot(0);
// Given data
p_1=200;// psia
p_2s=1.00;// psia
p_4=80.0;// psia

// Calculation
// (a)
// Station 1
p_1=200.0;// psia
x_1=1.00;// The dryness fraction
h_1=1199.3;// Btu/lbm
s_1=1.5466;// Btu/lbm.R
// Station 2s
p_2=1.00;// psia
p_2s=p_2;// psia
s_2s=s_1;// Btu/(lbm.R)
s_f2=0.1326;// Btu/(lbm.R)
s_fg2=1.8455;// Btu/(lbm.R)
h_f2=69.7;// Btu/lbm
h_fg2=1036.0;// Btu/lbm
// Station 3
p_3=1.00;// psia
x_3=0.00;// The dryness fraction
s_3=0.1326;// Btu/(lbm.R)
h_3=69.7;// Btu/lbm
v_3=0.01614;/// ft^3/lbm
// Station 4s
p_4=200;// psia
p_4s=p_4;// psia
s_4s=s_3;// Btu/lbm.R
h_4s=h_3+(v_3*(p_4s-p_3)*(144/778.16));// Btu/lbm
x_2s=(s_2s-s_f2)/s_fg2;// The dryness fraction
h_2s=h_f2+(x_2s*h_fg2);// Btu/lbm
n_T_Rankine=(((h_1-h_2s)-(h_4s-h_3))/(h_1-h_4s))*100;// The thermal efficiency in %
// (b)
// Station 4s
p_4=200;// psia
p_4s=p_4;// psia
s_4s=s_3;// Btu/lbm.R
h_4s=h_3+(v_3*(p_4s-p_3)*(144/778.16));// Btu/lbm
// Station 5s
p_5s=p_4;// psia
s_5s=s_1;// Btu/(lbm.R)
s_f5s=0.4535;// Btu/(lbm.R)
s_fg5s=1.1681;// Btu/(lbm.R)
x_5s=(s_5s-s_f5s)/s_fg5s;// The dryness fraction
h_f5s=282.2;// Btu/lbm
h_fg5s=901.4;// Btu/lbm
h_5s=h_f5s+(x_5s*h_fg5s);// Btu/lbm
h_5s=1125.7;// Btu/lbm
// Station 6
p_6=80.0;// psia
x_6=0.00;// The dryness fraction
s_6=0.4535;// Btu/(lbm.R)
h_6=282.2;// Btu/lbm
v_6=0.01757;// ft^3/lbm
// Station 7s
p_7=200;// psia
p_7s=p_7;// psia
s_7s=s_6;// Btu/(lbm.R)
h_7s=h_6+(v_6*(p_7-p_6)*(144/778.16));// Btu/lbm
r=(h_6-h_4s)/(h_5s-h_4s);// The mass fraction of steam
n_T_reg=(1-(((h_2s-h_3)/(h_1-h_7s))*(1-r)))*100;// %
printf("\n(a)The isentropic Rankine cycle thermal efficiency of the system without regeneration present,(n_T)_isentropic Rankine=%2.1f percentage.\n(b)The isentropic Rankine cycle thermal efficiency of the system,(n_T)_Rankine cycle with 1 regenerator=%2.1f percentage",n_T_Rankine,n_T_reg);
