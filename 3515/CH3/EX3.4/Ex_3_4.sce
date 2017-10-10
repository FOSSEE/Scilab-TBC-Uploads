// Exa 3.4
format('v',7);
clc;
clear;
close;
// Given data 
V_CC= 10;// in V
V_CE= 5;// in V
V_BE= 0.7;// in V
I_C= 5*10^-3;// in mA
bita= 100;
R_C= (V_CC-V_CE)/I_C;// in Ω
I_B= I_C/bita;// in A
R_B= (V_CC-V_BE)/I_B;// in Ω
disp(R_C*10^-3,"The value of R_C in kΩ is : ")
disp(I_B*10^6,"The value of I_B in µA is : ")
disp(R_B*10^-3,"The value of R_B in kΩ is : ")

// Note: The value of base current in the book is wrong



