// Exa 4.13
clc;
clear;
close;
format('v',6)
// Given data
I_B = 25;// in µA
I_B = I_B * 10^-6;// in A
I_CBO = 100;// in nA
I_CBO = I_CBO * 10^-9;// in A
Beta = 100;// unit less
I_C = (Beta*I_B) + ((Beta+1)*I_CBO);// in A
I_C= I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is");
I_C= I_C*10^-3;// in A
I_E = I_C + I_B;// in A
I_E= I_E*10^3;// in mA
disp(I_E,"The value of I_E in mA is");
I_E= I_E*10^-3;// in A
Alpha = Beta/(1+Beta);// unit less
disp(Alpha,"The value of Alpha is");
I_CEO = I_CBO/(1-Alpha);// in A
I_CEO = round(I_CEO *10^6);// in µA
disp(I_CEO,"The value of I_CEO in µA is");
