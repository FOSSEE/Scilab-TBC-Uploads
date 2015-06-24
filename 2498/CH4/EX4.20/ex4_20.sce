// Exa 4.20
format('v',6)
clc;
clear;
close;
// Given data
V_BE= 0.8;// in V
V_CE= 0.2;// in V
Beta = 100;
h_FE = Beta;
V1 = 3;// in V
V2 = -10;// in V
R_B = 7*10^3;// in ohm
R_E = 3*10^3;// in ohm
R_C = 500;// in ohm
//Applying KVL to input side, V1 - (I_B+I_C)*Rc - V_BEsat - (R1*I_B) = 0 or I_B*(R_B+R_C)+I_C*R_C= V1-V_BE              (i)
// Applying KVL to output side, V2+I_C*R_E+V_CE+R_C*(I_B+I_C) = 0 or   I_B*R_C+I_C*(R_C+R_E)= -V2-V_CE              (ii)
A= [(R_B+R_C) R_C;R_C (R_C+R_E)];
B= [V1-V_BE -V2-V_CE];
C=B*A^-1;// Solving eq(i) and (ii) by matrix method
I_B= C(1);// in A
I_C= C(2);// in A
I_B=I_B*10^3;// in mA
I_C=I_C*10^3;// in mA
I_Bmin= I_C/h_FE;//in mA
if I_B>I_Bmin then
    disp("Part (a) :")
    disp("As the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA),")
    disp("So the transistor will be in saturation region.")
end
Vo= -V_CE-(I_B+I_C)*10^-3*R_C;// in V
disp(Vo,"Part (b) : The value of Vo in volts is : ")
V_BEactive= 0.7;// in V
V_BC= -0.5;
// V_BN= (1+Beta)*(V1-V_BEactive)*R_C/(R_B+(1+Beta)*R_C)       (iii)
// V_CN= Beta*R_E*(V1-V_BEactive)/(R_B+(1+Beta)*R_C)                (iv)
// and V_BC= V_BN-V_CN, so from eq(iii) and (iv)
R_C= (V_BC*R_B+Beta*R_E*(V1-V_BEactive))/((1+Beta)*(V1-V_BEactive)-V_BC*(1+Beta));// in ohm
disp(R_C,"Part (c) :The value of R_C in ohm is : ")

// Note : 1  In the book, the calculated value of I_B i.e 0.14mA is wrong.
// Note: 2   In the book the calculated value of R_C i.e 819 Ω is wrong. we can easily check that on putting 0.819 kΩ in the last step.









