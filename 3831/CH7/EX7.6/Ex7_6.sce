// Example 7_6
clc;funcprot(0);
// Given dataS
m=3.00;// lbm
T_1=100.0;// °F
x_1=80.0/100;// Quality of steam
p_2=200;// psia
T_2=800.0;// °F
s_f1=0.1296;// Btu/lbm.R
s_fg1=1.8528;// Btu/lbm.R
s_2=1.7662;// Btu/lbm.R

// Solution
s_1=s_f1+(x_1*s_fg1);// Btu/lbm.R
deltaS=m*(s_2-s_1);// Btu/R
printf('\nThe change in total entropy,S_2-S_1=%0.3f Btu/R',deltaS);
