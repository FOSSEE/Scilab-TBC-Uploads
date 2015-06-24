//clear//
clear;
clc;

//Example 29.1
//Given
mdot = 100; //[ton/h]
w1 = 0.80;
w2 = 0.80;
//Solution
Wi = 12.74; //From Table 29.1
Dpa = 2*25.4; //[mm]
Dpb = 0.125*25.4; //[mm]
//Using Eq.(29.10)
P = mdot*0.3162*Wi*(1/Dpb^0.5-1/Dpa^0.5); //[kW]
disp('kW',P,'Power required (P) = ');
