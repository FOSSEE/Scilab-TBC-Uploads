// Example 15_11
clc;funcprot(0);
// Given data
T=25+273.15;// K
m_f=0.0100;// kg
M_octane=114;// kg/kg mole
R=1545.35;// ft.lbf/(lbmole.R)
V_p=50.0*10^-3;// ft^3
R_u=0.0083143;// MJ/kgmole.K

// Calculation
m_oct=m_f/M_octane;// kgmole
// The reaction equation for 50.0% excess pure oxygen is C8H18+1.5(12.5)O2--->8(CO2)+9(H2O)+6.25(O2)
n_CO2=8;// The stoichiometric coefficient of the reaction
n_H2O=9;// The stoichiometric coefficient of the reaction
n_O2=6.25;// The stoichiometric coefficient of the reaction
m_oy=m_oct*(n_CO2+n_H2O+n_O2);// kgmole of product
n_p=m_oy*2.2046;// lbmole of product
h_f_C8H18=-249.952;// MJ/kgmole
h_f_CO2=-393.522;// MJ/kgmole
h_f_H2O_g=-241.827;// MJ/kgmole
h_f_N2=0;// MJ/kgmole
h_f_O2=0;// MJ/kgmole
N=h_f_C8H18+(0-(1.5*12.5*R_u*T))-(n_CO2*(h_f_CO2-(R_u*T)))-(n_H2O*(h_f_H2O_g-(R_u*T)))-(n_O2*(h_f_O2-(R_u*T)));// The numerator in MJ
c_v_CO2=0.04987;// MJ/kgmole.K
c_v_H2O=0.03419;// MJ/kgmole.K
c_v_O2=0.02468;// MJ/kgmole.K
D=(n_CO2*c_v_CO2)+(n_H2O*c_v_H2O)+(n_O2*c_v_O2);// The denominator in MJ/K
T_A_bc=(T-273.15)+(N/D);// °C
T_A_bc=T_A_bc+273.15;// K
T_A_bc=T_A_bc*1.8;// R
P_max=(n_p*R*T_A_bc)/(V_p*144);// psi
printf("\nThe maximum possible explosion pressure inside the bomb,P_max=%5.0f psi",P_max);
// The answer vary due to round off error
