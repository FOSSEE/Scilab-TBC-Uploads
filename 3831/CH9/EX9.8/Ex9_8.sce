// Example 9_8
clc;funcprot(0);
// Given data
V_2=3.00;// ft^3
T_in=70+459.67;// °F
p_2=2000;// psia

// Calculation
// From Table C.13a of Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find for oxygen
c_p=0.219;// Btu/(lbm.R)
R=48.29;// ft.lbf/(lbm.R)
k=1.39;// The specific heat ratio 
T_2_af=k*T_in;// R
T_2_if=T_in;// R
m_2_af=(p_2*144*V_2)/(R*T_2_af);// lbm
m_2_if=(p_2*144*V_2)/(R*T_2_if);// lbm
// (a)
S_p_12_af=m_2_af*c_p*2.303*log10(k);// Btu/R
// (b)
S_p_12_if=m_2_if*R/778.16;// Btu/R
printf("\n(a)The amount of entropy produced when the container is filled adiabatically by insulating it,[1(S_P)2]adiabatic filling=%1.2f Btu/R \n(b)The amount of entropy produced when the container is filled isothermally,[1(S_P)2]isothermal filling=%1.2f Btu/R",S_p_12_af,S_p_12_if)
