// Exa 4.4
clc;
clear;
close;
format('v',7)
// Given data
I_B = 45;// in µA
I_B = I_B * 10^-6;// in A
I_C = 5.45;// in mA
I_C = I_C * 10^-3;// in A
I_E = I_B+I_C;// in A
I_E= I_E*10^3;// in mA
disp(I_E,"The value of I_E in mA is");
I_E= I_E*10^-3;// in A
Alpha = I_C/I_E;// unit less
disp(Alpha,"The value of Alpha is");
format('v',5)
Beta = I_C/I_B;// unit less
disp(Beta,"The value of Beta is");
I_C = 10;// in mA
I_C = I_C * 10^-3;// in A
I_B = I_C/Beta;// in A
I_B = I_B * 10^6;// in µA
disp(I_B,"The required base current in µA is");
