clear;
clc;
disp('Example 8.8');

//  aim : To determine
//  the percentage composition of the gas by volume

//  given values
CO = 30;// %age mass composition of CO
N2 = 20;// %age mass composition of N2
CH4 = 15;// %age mass composition of CH4
H2 = 25;// %age mass composition of H2
O2 = 10;// %age mass composition of O2

mCO = 28;// molculer mass of CO
mN2 = 28;// molculer mass of N2
mCH4 = 16;// molculer mass of CH4
mH2 = 2;// molculer mass of H2
mO2 = 32;// molculer mass of O2

// solution
vg = CO/mCO+N2/mN2+CH4/mCH4+H2/mH2+O2/mO2;
v1 = CO/mCO/vg*100;// %age volume composition of CO
v2 = N2/mN2/vg*100;// %age volume composition of N2
v3 = CH4/mCH4/vg*100;// %age volume composition of CH4
v4 = H2/mH2/vg*100;// %age volume composition of H2
v5 = O2/mO2/vg*100;// %age volume composition of O2

mprintf('\n The percentage composition of CO by volume is  =  %f\n,\nThe percentage composition of N2 by volume is  =  %f\n\nThe percentage composition of CH4 by volume is  =  %f\n\nThe percentage composition of H2 by volume is  =  %f\n\nThe percentage composition of O2by volume is=%f',v1,v2,v3,v4,v5);

// End
