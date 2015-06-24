// Example 4.10
clc;
clear;
close;
// Given data
V_CC= 10;// in V
V_BE= 0.7;// in V
V_CE= 5;// in V
bita= 100;
I_C= 5;// in mA
// Applying KVL to collector circuit, V_CC-V_CE-I_C*R_C =0
R_C= (V_CC-V_CE)/I_C;// in kΩ
disp(R_C,"The value of R_C in kΩ is : ")
I_B= I_C/bita;// in mA
disp(I_B*10^3,"The value of I_B in µA is : ")
// Applying KVL to base circuit, V_CC-I_B*R_B-V_BE= 0
R_B= (V_CC-V_BE)/I_B;// in kΩ
disp(R_B,"The value of R_B in kΩ is :")
// Note: In the book, there is an error in calculating the value of I_B, but they putted the correct value of I_B to evaluate the value of R_B
