// Exa 5.10
clc;
clear;
close;
format('v',6)
// Given data
h_ie = 1.5;// in ohm
h_fe = 100;
h_re = 3 * 10^-4;
h_oe = 25 * 10^-6;// in  mho
V_CC = 20;// in V
R1 = 50 * 10^3;// in ohm
R2 = 5 * 10^3;// in ohm
R_C = 5 * 10^3;// in ohm
R_L = 10 * 10^3;// in ohm
R_S = 1;// in k ohm
Ri= 1.4*10^3;// in ohm
R_B = (R1*R2)/(R1+R2);// in ohm
R_Ldesh= R_L*R_C/(R_L+R_C);// in ohm
// Current gain for transisor,
Ai= -h_fe/(1+h_oe*R_Ldesh);
// Overall current gain, A_I= Ai+Ib/I= Ai+R_B/(R_B+Ri) 
A_I= Ai*R_B/(R_B+Ri);
disp(A_I,"The overall current gain is : ")
//Part (ii)
R_i= R_B*Ri/(R_B*Ri);// in k ohm
disp(R_i,"The value of Ri in k ohm is : ")
// Part (iii)
Av= A_I*R_Ldesh/Ri;// voltage gain for transistor
// overall voltage gain,
A_VS=  Av*R_i/(R_S+R_i);
disp(A_VS,"The value of A_VS is : ")
// Part (iv)
R_S=R_S*10^3;// in ohm
R_Sdesh= R_S*R_B/(R_S+R_B);// in ohm
gamma_o= h_re*h_fe/(h_ie+R_Sdesh)-h_oe;// in mho
gamma_o= round(gamma_o*10^6);// in µ mho
disp(gamma_o,"The value of gamma_o in µ mho is : ")

// Note: In the book, all these calculated value is not accurate.


