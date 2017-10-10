// Example 8_10
clc;funcprot(0);
// Given data
// State 1
m=0.100;// lbm
p_1=100;// psia
T_1=180;// °F
v_1=0.6210;// ft^3/lbm
h_1=137.49;// Btu/lbm
s_1=0.2595;// Btu/(lbm.R)
// State 2
p_2=30.0;// psia
T_2=120;// °F
v_2=1.9662;// ft^3/lbm
h_2=126.39;// Btu/lbm
s_2=0.2635;// Btu/(lbm.R)
// State 3
p_3=p_2;// psia
v_3=v_1/2;// ft^3/lbm
x_3=0.1952;// The quality of steam
s_3=0.07241;// Btu/(lbm.R)
K=5.00;// Btu/R

// Calculation
// (a)
// From Table C.7e of Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find that at p1 = 100 psia and T1 = 180°F,
v_1=0.6210;// ft^3/lbm
u_1=125.99;// Btu/lbm
// At p2= 30 psia and T2 = 120°F,
v_2=1.966;// ft^3/lbm
u_2=115.47;// Btu/lbm
W_12=-m*(u_2-u_1);// Btu
// (b)
v_3=v_1/2;// ft^3/lbm
// At p2= 30 psia 
v_f3=0.01209;// ft^3/lbm
v_g3=1.5408;// ft^3/lbm
u_f3=16.24;// Btu/lbm
u_g3=95.40;// Btu/lbm
x_3=(v_3-v_f3)/(v_g3-v_f3);// The quality of steam
x_3p=x_3*100;// %
u_3=u_f3+(x_3*(u_g3-u_f3));// Btu/lbm
Q_23=(m*(u_3-u_2))+(m*(p_3*144)*((v_3-v_2)*(1/778.17)));// Btu
// (c)
// From Table C.7b
T_3=15.38;// °F
dQ=0;// Btu
S_p12=m*(s_1-s_2)-0;// Btu/R
s_f3=0.0364;// Btu/(lbm.R)
s_fg3=0.2209;// Btu/(lbm.R)
s_3=s_f3+(x_3*(s_fg3-s_f3));// Btu/(lbm.R)
S_p23=(m*[s_3-s_2])-(K*log((T_3+459.67)/(T_2+459.67)));// Btu/R
S_p13=S_p12+S_p23;// Btu/R
printf('\n(a)The work transport of energy during the adiabatic expansion,W_12=%1.2f Btu \n(b)The heat transport of energy during the isobaric compression,Q_23=%1.2f Btu \n(c)Since state 3 is saturated (a mixture of liquid and vapor), T3 must be equal to the saturation temperature at 30.0 psia,which, from Table C.7b, is T_3 =%2.2f°F \n(d)The total entropy production for both processes,1(S_p)3=%0.3f Btu/R',W_12,Q_23,T_3,S_p13);
