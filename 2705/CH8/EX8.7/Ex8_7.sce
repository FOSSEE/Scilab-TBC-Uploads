clear;
clc;
disp('Example 8.7');

//  aim : To determine
//  the percentage analysis of the gas by mass

//  Given values
CO2 = 20;// percentage volumetric composition  of CO2
N2 = 70;// percentage volumetric composition of N2
O2 = 10;// percentage volumetric composition  of O2

mCO2 = 44;//  moleculer mas of CO2
mN2 = 28;//  moleculer mass of N2
mO2 = 32;//  moleculer mass of O2

//  solution
mgas = CO2*mCO2+N2*mN2+O2*mO2;//  moleculer mass of gas 
m1 = CO2*mCO2/mgas*100;// percentage composition of CO2 by mass 
m2 = N2*mN2/mgas*100;// percentage composition of N2 by mass 
m3 = O2*mO2/mgas*100;// percentage composition of O2 by mass 

mprintf('\n Mass percentage of CO2 is  =  %f\n\n Mass percentage of N2 is  =  %f\n\n Mass percentage of O2 is  =  %f\n',m1,m2,m3 )

// End
