clc;
clear;
T0=293 //temperature of the surrounding
T1=373 //temperature of the black body in case 1
T2=303 //temperature of the black body in case 2

//calculation

E1_by_E2=(T1^4-T0^4)/(T2^4-T0^4)
mprintf("The ratio of how much body cools in the first case to the second case is = %2.1f",E1_by_E2)
