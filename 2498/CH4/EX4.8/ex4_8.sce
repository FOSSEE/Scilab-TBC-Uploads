// Exa 4.8
clc;
clear;
close;
format('v',7)
// Given data
I_CBO = 10;// in µA
I_CBO = I_CBO * 10^-6;// in A
Beta = 50;
h_FE = Beta;
I_B = 0.25;// in mA
I_B = I_B * 10^-3;// in A
// The collector current 
I_C = (Beta*I_B) + ((1+Beta)*I_CBO);//in A
I_C = I_C * 10^3;// in mA
disp(I_C,"The collector current in mA is");
T2 = 50;// in degree C
T1 = 25;// in degree C
I_CBOat25 = 10;// in µA
I_CBOat50 = I_CBOat25 * (2^((T2-T1)/10));// in µA
I_CBOat50 = I_CBOat50 * 10^-6;// in A
//The new collector current 
I_C = (Beta*I_B) + ((1+Beta)*I_CBOat50);// in A
I_C = I_C * 10^3;// in mA
disp(I_C,"The new collector current in mA is");
