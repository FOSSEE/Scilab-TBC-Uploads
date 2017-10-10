// Example 13_7
clc;funcprot(0);
// Given data
n_s_pm1=84.0/100;// The isentropic efficiency of the first turbine
n_s_pm2=80.0/100;// The isentropic efficiency of the second turbine
n_s_p=61.0/100;// The isentropic efficiency of the boiler feed pump
n_s_pm=82/100;// The isentropic efficiency of the prime mover

// Calculation
// (a)
// Station 1
p_1=600.0;// psia
T_1=700.0;// °F
h_1=1350.6;// Btu/lbm
s_1=1.5874;// Btu/lbm.R
// Station 2s
p_2=100.0;// psia
p_2s=p_2;// psia
s_2s=s_1;// Btu/(lbm.R)
s_f2=0.4745;// Btu/(lbm.R)
s_fg2=1.1291;// Btu/(lbm.R)
h_f2=298.6;// Btu/lbm
h_fg2=889.2;// Btu/lbm
x_2s=(s_2s-s_f2)/s_fg2;// The dryness fraction
h_2s=h_f2+(x_2s*h_fg2);// Btu/lbm
// Station 3
p_3=100.0;// psia
T_3=700.0;// °F
x_3=0.00;// The dryness fraction
s_3=1.8035;// Btu/(lbm.R)
h_3=1379.2;// Btu/lbm
// Station 4s
p_4=1.00;// psia
p_4s=p_4;// psia
s_4s=s_3;// Btu/lbm.R
s_f4=0.1326;// Btu/(lbm.R)
s_fg4=1.8455;// Btu/(lbm.R)
h_f4=69.7;// Btu/lbm
h_fg4=1036.4;// Btu/lbm
x_4s=(s_4s-s_f4)/s_fg4;// The dryness fraction
h_4s=h_f4+(x_4s*h_fg4);// Btu/lbm
// Station 5
p_5=1.00;// psia
x_5=0.00;// The dryness fraction
s_5=0.1326;// Btu/(lbm.R)
h_5=69.7;// Btu/lbm
v_5=0.01614;// ft^3/lbm
// Station 6s
p_6=600;// psia
p_6s=p_6;// psia
s_6s=s_5;// Btu/(lbm.R)
h_6s=72.5;// Btu/lbm
v_6s=0.01614;// ft^3/lbm
h_7s=h_6s+(v_6s*(p_7-p_6)*(144/778.16));// Btu/lbm
h_2=h_1-((h_1-h_2s)*n_s_pm1);// Btu/lbm
h_6=h_5+((v_5*(p_6*p_5)*(144/778.16))/(n_s_p));// Btu/lbm
n_T_wr=((((h_1-h_2s)*n_s_pm1)+((h_3-h_4s)*n_s_pm2)-((v_5*(p_6-p_5)*(144/778.16))/(n_s_p)))/((h_1-h_6)+(h_3-h_2)))*100;// The Rankine cycle thermal efficiency of the plant with reheat in %
// (b)
s_4s=s_1;// Btu/(lbm.R)
x_4s=(s_4s-s_f4)/s_fg4;// The dryness fraction
h_4s=h_f4+(x_4s*h_fg4);// Btu/lbm
n_T_wor=((((h_1-h_4s)*n_s_pm)-((h_6s-h_5)/n_s_pm))/(h_1-h_6))*100;// The Rankine cycle thermal efficiency of the plant without reheat in %
printf("\n(a)The Rankine cycle thermal efficiency of the plant with reheat,n_T=%2.1f percentage \n(b)The Rankine cycle thermal efficiency of the plant without reheat,n_T=%2.1f percentage",n_T_wr,n_T_wor);
