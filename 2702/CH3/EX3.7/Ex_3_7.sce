// Exa 3.7
clc;
clear;
close;
// Given data 
V_CC= 15;// in V
V_BE= 0.7;// in V
V_CE= 5;// in V
I_C= 5;// in mA
I_C=I_C*10^-3;// in A
bita= 100;
I_B= I_C/bita;// in A
disp(I_B*10^6,"Base current in µA is : ")
//Apply KVL to collector circuit ,  V_CC= (I_C+I_B)*R_C+V_CE
R_C= (V_CC-V_CE)/(I_C+I_B);// in Ω
disp(R_C*10^-3,"The value of R_C in kΩ is : ")
//Apply KVL to base or input circuit,  V_CC= (I_C+I_B)*R_C+V_CE + I_B*R_B
R_B= (V_CC-V_BE-(I_C+I_B)*R_C)/I_B;// in ohm
disp(R_B*10^-3,"The value of R_B in kΩ is : ")

