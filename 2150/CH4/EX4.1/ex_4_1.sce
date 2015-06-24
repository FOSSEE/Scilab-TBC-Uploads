// Example 4.1
clc;
clear;
close;
// Given data
I_C= 0.9;// in mA
I_E=1;// in mA
alpha = I_C/I_E;
disp(alpha,"Current gain is : ") 
// Formula I_E= I_B+I_C
I_B= I_E-I_C;// in mA
disp(I_B,"The base current in mA is : ")
