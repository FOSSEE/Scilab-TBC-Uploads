// Example 7_1
clc;funcprot(0);
// Given data
P_1=12;// The pressure at turbine inlet in MPa
T_1=700;// °C
P_2=0.6;// The pressure at turbine exit in MPa
n_T=0.88;// The isentropic efficiency of the turbine

// Calculation
// (a)
// From the steam tables
s_1=7.0757;// kJ/kg.K
s_2=s_1;// kJ/kg.K
T_2=225.2;// °C
h_1=3858.4;// kJ/kg
h_2=2904.1;// kJ/kg
w_a=h_1-h_2;// kJ/kg
T_0=298;// K
w_rev=(h_1-h_2)-(T_0*(s_2-s_1));// kJ/kg
i=w_rev-w_a;// The irreversibility for an ideal turbine in kJ/kg
printf("\n(a)The reversible work,w_rev=%3.1f kJ/kg \n   The irreversibility for an ideal turbine,i=%0.1f kJ/kg",w_rev,i);
// (b)
w_ideal=w_rev;// kJ/kg
w_a=n_T*w_ideal;// The actual work in kJ/kg
h_2=h_1-w_a;// kJ/kg
// From the steam tables
T_2=279.4;// °C
s_2=7.2946;// kJ/kg
w_rev=(h_1-h_2)-(T_0*(s_1-s_2));// kJ/kg
n_II=w_a/w_rev;// The second law efficiency
i=w_rev-w_a;// The irreversibility in kJ/kg
printf("\n(b)The reversible work,w_rev=%3.0f kJ/kg \n   The irreversibility,i=%2.1f kJ/kg \n   The second law efficiency,n_II=%0.3f.",w_rev,i,n_II);
