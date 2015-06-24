// Exa 2.16
clc;
clear;
close;
format('v',7)
// Given data
bita = 100;
V_CEsat = 0.2;// in V
V_BEsat = 0.8;// in V
R_C = 3;// in k ohm
R_C = R_C * 10^3;// in k ohm
V_CC = 10;// in V
R_B = 7;// in k ohm
R_B = R_B * 10^3;// in ohm
R_E = 500;// in ohm
V_BB = 3;// in V
V_BE= 0.7;// in V
// Part (a) : 
// Applying KVL to input loop, V_BB = I_B*R_B+(I_B+I_C)*R_E+V_BEsat or I_B*(R_B+R_E)+I_C*R_E= V_BB-V_BEsat               (i)
// Applying KVL to output loop, V_CC=I_C*R_C+V_CEsat+(I_B+I_C)*R_E or I_B*R_E+I_C*(R_C+R_E)= V_CC-V_CEsat               (ii)
// Solving eq(i) and (ii)by matrix method
A= [(R_B+R_E) R_E;R_E (R_C+R_E)] ;
B= [V_BB-V_BEsat V_CC-V_CEsat];
R= B*A^-1;
I_B= R(1);// in A
I_C= R(2);// in A
I_Bmin= I_C/bita;// in A
I_B= I_B*10^3;// in mA
I_Bmin=I_Bmin*10^3;// in mA
if I_B>I_Bmin then
    disp("As the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA)")
    disp("Hence the transistor is in saturation region")
end

// Pard (e) : R_E to bring the transistor out of saturation
Vcut =0.5;//cut in voltage in V
I_B= poly(0,'I_B');// in A
I_C= bita*I_B;// in A
I_E= (1+bita)*I_B;// in A
// Applying KVL to input loop, V_BB= I_B*R_B+V_BE+(I_C+I_B)*R_E or
// I_B= (V_BB-V_BE)/(R_B+(1+bita)*R_E)                               (iii)
// I_C= bita*I_B =  (V_BB-V_BE)/(R_B+(1+bita)*R_E)*bita    (iv)
// V_C= -V_CC+I_C*R_C= -V_CC+(V_BB-V_BE)/(R_B+(1+bita)*R_E)*bita*R_C                                 (v)                (on substituting eq(iv))
// V_B= V_BE-(1+bita)*I_B*R_E= V_BE- (1+bita)*(V_BB-V_BE)/(R_B+(1+bita)*R_E)*R_E       (vi)                 (on substituting eq(iii))
// but V_C-V_B<= Vcut and substituting the value from eq (v) and (vi), we get
R_E= [(V_BB-V_BE)*bita*R_C-(Vcut+V_CC+V_BE)*R_B]/[(1+bita)*(Vcut+V_CC-V_BB+2*V_BE)];// in ohm
disp(R_E,"The value of R_E in ohm is : ")
