// Exa 5.14.10
clc;
clear;
close;
// Given data
V_ECsat= 0.2;// in V
V_CC= 10;// in V
V_EBsat= 0.8;// in V

// Part (i)
bita= 100;
R_B= 220;// in kΩ
// Applying KVL to collector circuit, V_CC= V_EC+ICRC
ICRC= V_CC-V_ECsat;// in V
// Applying KVL to input loop, V_CC= V_EBsat+I_B*R_B        (i)
I_B= (V_CC-V_EBsat)/R_B;// in mA
I_C= bita*I_B;// in mA
R_Cmin= ICRC/I_C;// in kΩ
disp(R_Cmin,"The minimum value of R_C in kΩ is :  ")
// Part (ii)
R_C= 1.2;// in kΩ
I_Csat= ICRC/R_C;// in mA
I_B= I_Csat/bita;// in mA
// From eq (i)
R_B= (V_CC-V_EBsat)/I_B;// in kΩ
disp(R_B,"The maximum value of R_B in kΩ is : ")

