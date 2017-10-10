// Example 11_3
clc;funcprot(0);
// Given data
m=20;// The mass of the mixture in lbm
T_1=80;// °F
T_2=300;// °F
c_v1=0.177;// Btu/lbm-°R
c_v2=0.158;// Btu/lbm-°R
c_v3=0.157;// Btu/lbm-°R
mf_1=20/100;// The mole fraction for nitrogen
mf_2=40/100;// The mole fraction for CO_2
mf_3=40/100;// The mole fraction for oxygen

// Calculation
c_v=(mf_1*c_v1)+(mf_2*c_v2)+(mf_3*c_v3);// // Btu/lbm-°R
delT=T_2-T_1;// °F
Q=m*c_v*delT;// The heat transfer in Btu
printf("\nThe heat transfer,Q=%3.0f Btu",Q);
