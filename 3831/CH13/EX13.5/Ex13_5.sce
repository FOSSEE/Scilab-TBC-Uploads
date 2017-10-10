// Example 13_5
clc;funcprot(0);
// Given data
p_1=100;// psia
T_1=500;// °F
p_3=1.00;// psia

// Calculation
// Station 1
p_1=100.0;// psia
T_1=500.0;// °F
h_1=1279.1;// Btu/lbm
s_1=1.7087;// Btu/lbm.R
// Station 2s

// Station 3
p_3=1.00;// psia
x_3=0.00;// The dryness fraction
s_3=s_f2;// Btu/lbm.R
h_3=h_f2;// Btu/lbm
v_3=0.01614;/// ft^3/lbm
// Station 4s
p_4s=p_1;// psia
s_4s=s_3;// Btu/lbm.R
h_4s=h_3+(v_3*(p_4s-p_3)*(144/778.16));// Btu/lbm

s_2s=s_1;// Btu/lbm.R
s_f2=0.1326;// Btu/lbm.R
s_fg2=1.8455;// Btu/lbm.R
x_2s=(s_2s-s_f2)/s_fg2;// The dryness fraction
h_f2=69.7;// Btu/lbm
h_fg2=1036.0;// Btu/lbm
h_2s=h_f2+(x_2s*h_fg2);// Btu/lbm
// (a)
// The degree of superheat at the outlet of the boiler is determined from Table C.2a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics and Eq. (13.10) as
T_sat=327.8;// °F
Dsh=500-T_sat;// Degree of superheat in °F
// (b)
T_H=T_1+459.67;// R
T_L=101.67+459.67;// R
n_T_carnot=(1-(T_L/T_H))*100;// The Carnot cycle thermal efficiency in %
// (c)
n_T_rankine=((h_1-h_2s-((v_3*(p_4s-p_3))*(144/778.16)))/(h_1-h_3-((v_3*(p_4s-p_3))*(144/778.16))))*100;// The isentropic Rankine cycle thermal efficiency in %
printf("\n(a)The degree of superheat at the boiler outlet=%3.0f°F \n(b)The equivalent Carnot cycle thermal efficiency of the lawn mower,n_T_carnot=%2.1f percentage \n(c)The isentropic Rankine cycle thermal efficiency of the lawn mower,(n_T)_Rankine=%2.1f percentage",Dsh,n_T_carnot,n_T_rankine);
