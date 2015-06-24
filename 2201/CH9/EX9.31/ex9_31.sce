// Exa 9.31
clc;
clear;
close;
// Given data
V_DD = 5;// in V
V_T= 1;// in V
k= 1;// in mA/V^2
R1 = 1;// in M ohm
R2 = 1;// in M ohm
R_S= 2;// in k ohm
R_D= 2;// in k ohm
I1 = V_DD/(R1+R2);// in A
disp(I1,"The value of I1 in µA is : ")
V_A = (R2/(R2+R1))*V_DD;// in V
disp(V_A,"The value of V_A and V_G in volts is : ")
I_D= poly(0,'I_D');
V_C= I_D*R_S;// in V
V_GS= V_A-V_C;// in V
I_D= I_D-k*(V_GS-V_T)^2;
I_D= roots(I_D);// in mA
I_D= I_D(2);// in mA
disp(I_D,"The value of I_D in mA is : ")
V_B= V_DD-I_D*R_D;// in V
V_C= I_D*R_S;// in V
V_DS= V_B-V_C;// in V
disp(V_B,"The value of V_B in volts is : ")
disp(V_C,"The value of V_C in volts is : ")
disp(V_DS,"The value of V_DS in volts is : ")

// Note: In the book, the calculated values are wrong, this is why the answer in the book is wrong.
