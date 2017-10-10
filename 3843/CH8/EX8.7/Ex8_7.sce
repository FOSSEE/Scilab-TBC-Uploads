// Example 8_7
clc;funcprot(0);
// Given data
P_3=600;// psia
T_3=1000;// °F
P_4=40;// psia
T_4=600;// °F
P_6=2;// psia

// Calculation
// We have from Example 8.5 and the steam tables
h_1=94;// Btu/lbm
h_2=h_1;// Btu/lbm
h_8=236;// Btu/lbm
h_3=1518;// Btu/lbm
h_7=h_8;// Btu/lbm
h_5=1333;// Btu/lbm
h_6=1086;// Btu/lbm
h_4=1200;// Btu/lbm
m_6=1;// kg
m_4=((h_8-h_2)/(h_4-h_2))*m_6;// lbm
m_2=m_6-m_4;// lbm
w_T=(h_3-h_4)+((h_5-h_6)*m_2);// The work output from the turbine in Btu/lbm
q_B=h_3-h_8+((h_5-h_4)*m_2);// Btu/lbm
n=w_T/q_B;// The efficiency of the reheat-regeneration cycle
printf("\nThe efficiency of the reheat-regeneration cycle,n=%0.3f or %2.1f percentage.",n,n*100);
