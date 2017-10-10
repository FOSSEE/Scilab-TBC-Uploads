// Example 12_14
clc;funcprot(0);
// Given data
m_methane=3.00;// lbm
m_propane=4.00;// lbm
V_m=1.00;// ft^3
T_m=240.0+459.67;// R
R=1545.35;// ft.lbf/(lb mole.R)

// Calculation
m_m=m_methane+m_propane;// lbm
w_methane=m_methane/m_m;// The mass fraction
w_propane=m_propane/m_m;// The mass fraction
// The molecular masses of the components are found in Table C.12a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics as
M_methane=16.043;// lbm/lbmole
M_propane=44.097;// lbm/lbmole
M_m=1/((w_methane/M_methane)+(w_propane/M_propane));// lbm/lb mole
// From Tables C.12a and C.13a, we find that
p_c_methane=673;// psia
p_c_propane=617;// psia
T_c_methane=343.9;// R
T_c_propane=665.9;// R
R_methane=96.3;// ft.lbf/(lbm.R)
R_propane=35.0;// ft.lbf/(lbm.R)
v_m=V_m/m_m;// ft^3/lbm
T_R_methane=T_m/T_c_methane;// The reduced temperature for methane
v_R_methane=(v_m/w_methane)*((p_c_methane*144)/(R_methane*T_c_methane));// The reduced pseudospecific volume for methane
T_R=2.03;// The reduced temperature for methane
v_R=0.975;// The reduced pseudospecific volume for methane
Z_D_methane=0.975;// The Dalton compressibility factor for methane
T_R=1.05;// The reduced temperature for propane
v_R=0.95;// The reduced pseudospecific volume for propane
Z_D_propane=0.720;// The Dalton compressibility factor for propane
Z_Dm=(((w_methane*M_m)/M_methane)*Z_D_methane)+(((w_propane*M_m)/M_propane)*Z_D_propane);// The Dalton compressibility factor for the  mixture
R_m=R/M_m;// ft.lbf/lbm.R
p_m=(Z_Dm*m_m*R_m*T_m)/V_m;// lbf/ft^2
p_m=p_m/144;// psia
printf("\nThe total pressure in the tank,p_m=%4.0f psia",p_m);
