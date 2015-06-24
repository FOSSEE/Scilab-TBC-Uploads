// Exa 2.9
clc;
clear;
close;
format('v',6)
// Given data
bita = 200;
V_CEQ = 3;// in V
V_CC = 6;// in V
V_BB= -6;// in V
V_BE= 0.7;// in V
Vo = 0;// in V
R1= 90*10^3;// in ohm
R2= 90*10^3;// in ohm
// V_CC - I_CR_C - V_CEQ - I_ER_E-V_BB = 0        (i)
// Vo = V_CEQ + I_E*R_E - V_CC or 
I_ER_E= Vo+V_CC-V_CEQ;// in V
// From eq(i)
I_CR_C= V_CC - I_ER_E - V_CEQ - V_BB;// in V
// Applying KVL to the input side of circuit
//V_CEQ-[(R1 || R2)*I_B]-V_BE-I_ER_E+V_CC=0 or
I_B= (V_CEQ-V_BE-I_ER_E+V_CC)/((R1*R2)/(R1+R2));// in A
I_E= (1+bita)*I_B;//in A
R_E= I_ER_E/I_E;// in ohm
I_C= bita*I_B;// in A
R_C= I_CR_C/I_C;// in ohm
disp("Part (a) : ")
disp(R_E,"The value of R_E in ohm is : ")
disp(R_C,"The value of R_C in ohm is : ")
disp("Parb (b) :")
bita= 100;
I_E= (1+bita)*I_B;//in A
I_C= bita*I_B;// in A
Vo_new= V_CEQ+I_E*R_E-V_CC;// in V
Change_in_Vo= Vo_new-Vo;// in V
disp(Change_in_Vo,"The change in Vo in volts is : ")

