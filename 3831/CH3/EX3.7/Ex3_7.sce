// Example 3_7
clc;funcprot(0);
// Given data
T_1=240;// °F
T_2=80;// °F
p_1=150;// psia
p_2=14.7;// psia
c_p=0.240;// Btu/lbm · R
c_v=0.172;// Btu/lbm · R

// Solution
// (a)
deltau=c_v*((T_2+459.67)-(T_1+459.67));// Btu/lbm
deltah=c_p*(T_2-T_1);// Btu/lbm
printf('\n(a)The change in specific internal energy,u_2-u_1=%2.1f Btu/lbm \n   The change in specific enthalpy,h_2-h_1=%2.1f kJ/kg',deltau,deltah);
// (b)
// Values for u and h for variable specific heat air can be found in Table C.16.
T_1=T_1+459.67;// R
h_1=167.56;// Btu/lbm
u_1=119.58;// Btu/lbm
T_2=T_2+459.67;// R
h_2=129.06;// Btu/lbm
u_2=92.04;// Btu/lbm
deltau=u_2-u_1;// Btu/lbm
deltah=h_2-h_1;// Btu/lbm
printf('\n(b)The change in specific internal energy,u_2-u_1=%2.1f Btu/lbm \n   The change in specific enthalpy,h_2-h_1=%2.1f kJ/kg',deltau,deltah);
