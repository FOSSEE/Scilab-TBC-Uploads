// Example 12_15
clc;funcprot(0);
// Given data
T_m=500;// K
p_m=20.0;// MPa
R=8.3143;// kJ/(kg mole.K)

// Calculation
// Assume a-ammonia,cl-chlorine,no-nitrous oxide
m_a=1.00;// kg
m_cl=1.00;// kg
m_no=1.00;// kg
m_m=m_a+m_cl+m_no;// kg
// The mass fractions are
w_a=m_a/m_m;
w_cl=m_cl/m_m;
w_no=m_no/m_m;
M_a=17.030;// kg/kgmole
M_cl=70.906;// kg/kgmole
M_no=44.013;// kg/kgmole
M_m=1/((w_a/M_a)+(w_cl/M_cl)+(w_no/M_no));// The molecular mass of the mixture in kg/kgmole
p_c_a=11.280;// MPa
T_c_a=405.5;// K
p_c_cl=7.710;// MPa
T_c_cl=417.0;// K
p_c_no=7.270;// MPa
T_c_no=309.7;// K
R_a=R/M_a;// kJ/kg.K
R_cl=R/M_cl;// kJ/kg.K
R_no=R/M_no;// kJ/kg.K
// The reduced temperatures and pressures are
T_R_a=T_m/T_c_a;
p_R_a=p_m/p_c_a;
T_R_cl=T_m/T_c_cl;
p_R_cl=p_m/p_c_cl;
T_R_no=T_m/T_c_no;
p_R_no=p_m/p_c_no;
// Using these values on Figure 7.6 gives the following Amagat compressibility factors:
Z_A_a=0.64;
Z_A_cl=0.55;
Z_A_no=0.86;
Z_Am=(((w_a*M_m)/M_a)*Z_A_a)+(((w_cl*M_m)/M_cl)*Z_A_cl)+(((w_no*M_m)/M_no)*Z_A_no);// The Amagat compressibility factor for the mixture
R_m=R/M_m;// kJ/kg.K
V_m=(Z_Am*m_m*R_m*T_m)/(p_m*1000);// m^3
printf("\nThe total volume occupied by the mixture,V_m=%0.4f m^3",V_m);
