// Exa 6.8
format('v',6)
clc;
clear;
close;
// Given data
bita= 100;
V_CC= 6;// in V
V_BE= 0.7;// in V
R_B= 530*10^3;// in Ω
R_C= 2*10^3;// in Ω
// Applying KVL for input side, V_CC= I_B*R_B+V_BE or
I_B= (V_CC-V_BE)/R_B;// in A
I_C= bita*I_B;// in A
// Applying KVL to output side, 
V_CE= V_CC-I_C*R_C;// in V
S= 1+bita;
disp("The operating point is : "+string(V_CE)+" V, "+string(I_C*10^3)+" mA")
disp(S,"The stability factor is : ")
