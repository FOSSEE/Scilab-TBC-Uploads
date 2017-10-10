// Example 13_8
clc;funcprot(0);
// Given data
p_1=5000.0;// psia
T_1=1200.0;// °F
p_3=1000.0;// psia
p_5=300.0;// psia
p_6s=0.400;// psia
mdot=1.50*10^6;// lbm/h
W_netout=325;// MW

// Calculation
// Station 1-Turbine 1 inlet
p_1=5000.0;// psia
T_1=1200.0;// °F
h_1=1530.8;// Btu/lbm
s_1=1.5068;// Btu/lbm.R
// Station 2s-Turbine 1 exit
p_2s=1000;// psia
s_2s=s_1;// Btu/lbm.R
h_2s=1316.9;// Btu/lbm
// (by interpolation in Table C.3a)
// Station 3-Turbine 2 inlet
p_3=1000.0;// psia
T_3=1000.0;// °F
h_3=1505.9;// Btu/lbm
s_3=1.6532;// Btu/lbm.R
// (by interpolation in Table C.3a)
// Station 4s-Turbine 2 exit
p_4s=1000;// psia
s_4s=s_3;// Btu/lbm.R
h_4s=1343.8;// Btu/lbm
// Station 5-Turbine 3 inlet
p_5=300.0;// psia
T_5=1000.0;// °F
h_5=1526.4;// Btu/lbm
s_5=1.7966;// Btu/lbm.R
// Station 6s-Turbine 3 exit
p_6s=0.400;// psia
s_6s=s_5;// Btu/lbm.R
s_f6s=0.0799;// Btu/lbm.R
s_fg6s=1.9762;// Btu/lbm.R
x_6s=(s_6s-s_f6s)/s_fg6s;// The dryness fraction
h_f6s=40.9;// Btu/lbm
h_fg6s=1052.4;// Btu/lbm
h_6s=h_f6s+(x_6s*h_fg6s);// Btu/lbm
// Station 7-Condenser exit
p_7=0.400;// psia
x_7=0.00;// The dryness fraction
h_7=40.9;// Btu/lbm
v_7=0.01606;// ft^3/lbm
// Station 8s-Boiler inlet
p_8s=p_1;
// s_8s=s_7;
h_8s=h_7+((v_7*(p_8s-p_7))*(144/778.16));// Btu/lbm
// (a)
n_s_p=1.0;// The isentropic thermal efficiency of this Rankine cycle power plant
n_s_pm2=n_s_p;// The isentropic thermal efficiency of this Rankine cycle power plant
n_s_pm1=n_s_pm2;// The isentropic thermal efficiency of this Rankine cycle power plant
N=(h_1-h_2s)+(h_3-h_4s)+(h_5-h_6s)-(v_7*(p_8s-p_7)*(144/778.16));// The numerator in Btu/lbm
D=(h_1-h_8s)+(h_3-h_2s)+(h_5-h_4s);// The denominator in Btu/lbm
n_T=(N/D)*100;// The isentropic thermal efficiency in %
// (b)
W_netout=(W_netout*10^3)*3412;// Btu/h
W_isen=mdot*[(h_1-h_2s)+(h_3-h_4s)+(h_5-h_6s)-(v_7*(p_8s-p_7*(144/778.16)))];// Btu/h
n_s_tg=(W_netout/W_isen)*100;
printf("\n(a)The isentropic thermal efficiency of this power plant,(n_T)_s=%2.1f percentage \n(b)The isentropic efficiency of the turbine-generator power unit,(n_s)_turbine generator=%2.1f percentage",n_T,n_s_tg);
// The answer vary due to round off error
