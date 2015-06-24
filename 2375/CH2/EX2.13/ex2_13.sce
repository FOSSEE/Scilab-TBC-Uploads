// Exa 2.13
clc;
clear;
close;
format('v',6)
// Given data
V_CEsat = 0.2;// in V
R_B = 100 * 10^3;// in ohm
R_C = 2 * 10^3;// in ohm
bita = 100;
R_E = 1 * 10^3;// in ohm
V_CC = 10;//in V
V_BEsat = 0.8;// in V
V_BEactive = 0.7;// in V
V_BE= 0.7;// in V
V_BEcutin = 0.5;// in V
// Applying KVL to output circuit, we get
// V_CC = R_C*I_C + V_CEsat + R_E*I_E       (i)
I_Bmin= poly(0,'I_Bm');
I_C= bita*I_Bmin;// in A
I_E= (1+bita)*I_Bmin;// in A
// From eq(i)
I_Bmin= R_C*I_C + V_CEsat + R_E*I_E-V_CC;// in A
I_Bmin= roots(I_Bmin);// in A
I_Bmin= I_Bmin*10^6;// in µA
// Applying KVL to input circuit, we get
// V_CC = R_B*I_B + V_BEsat + R_E*I_E       (ii)
I_B= poly(0,'I_B');// in A
I_E= (1+bita)*I_B;// in A
// From eq(ii)
I_B= R_B*I_B + V_BEsat + R_E*I_E-V_CC;// in A
I_B= roots(I_B);// in A
I_B= I_B*10^6;// in µA
if I_B>I_Bmin then
    disp("As the value of I_B ("+string(I_B)+" µA) is greater than the value of I_Bmin ("+string(I_Bmin)+" µA)")
    disp("Hence the transistor is in saturation region")
end

// Part (b) : To obtain the value of R_E
V_CE= 0.4;// in V (assumed)
// Rewrite eq(ii) as, V_CC = (R_C*I_C) + V_CE + (R_E*I_E) or 
// I_B= (V_CC-V_CE)/(bita*R_C+(1+bita)*R_E)         (iii)      (as I_C= bita*I_B and I_E= (1+bita)*I_B )
// Applying KVL to input circuit, V_CC= I_B*R_B+V_BE+(1+bita)*I_B*R_E       (iv)
// On substituting the I_B from eq (iii) in eq (iv)
R_E= [(V_CC-V_BE)*bita*R_C-(V_CC-V_CE)*R_B]/[(1+bita)*(V_BE-V_CE)];// in ohm
R_E= R_E*10^-3;// in k ohm
disp(R_E,"The value of R_E in kΩ is : ")

