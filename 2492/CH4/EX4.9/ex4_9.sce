// Exa 4.9
format('v',6)
clc;
clear;
close;
// Given data
V_BE= 0.7;
bita = 100;
V_CC = 20;// in V
R_E = 1 * 10^3;// in ohm
V_CEQ = 10;// in V
I_CQ = 2* 10^-3;// in A
S_ICO = 10;
I_BQ = I_CQ/bita;// in A
// R_B= R1*R2/(R1+R2)      (i)
// V_B= R2*V_CC/(R1+R2) (ii)
R_B= (S_ICO-1)*R_E;// in ohm
// V_CC= I_CQ*R_C+V_CEQ+(1+bita)*I_C/bita*R_E
R_C= (V_CC-V_CEQ-I_CQ*R_E)/I_CQ;// in ohm
I_B= I_CQ/bita;// in A
V_B= I_B*R_B+V_BE+(1+bita)*R_E*I_B;// in V
// From eq (i) and (ii)
R2= (V_B*R_B+R_B*(V_CC-V_B))/(V_CC-V_B);// in ohm
R1= R2*R_B/(R2-R_B);// in ohm
R1= R1*10^-3;// in k ohm
R2= R2*10^-3;// in k ohm
disp(R1,"The value of R1 in k ohm is : ")
disp(R2,"The value of R2 in k ohm is : ")
