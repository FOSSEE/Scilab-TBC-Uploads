// Exa 2.15
clc;
clear;
close;
format('v',6)
// Given data
bita = 50;
V_CC = 25;// in V
V_BB = 10;// in V
R_C = 15 * 10^3;// in ohm
R_B = 40 * 10^3;// in ohm
R_E = 5 * 10^3;// in ohm
V_BE = 0.7;// in V
I_B= poly(0,'I_B');
I_E= (1+bita)*I_B;// in A
// Applying KVL to Base-Emitter loop,
// V_BB = I_B*R_B + V_BE + I_E*R_E
I_B=  I_B*R_B + V_BE + I_E*R_E-V_BB;
I_B= roots(I_B);// in A
I_E= (1+bita)*I_B;// in A
I_B= I_B*10^6;// in µA
disp("Part (a) : On assuming that the transistor is in the active region")
disp(I_B,"The value of I_B in µA is : ")
I_C= bita*I_B;// in µA
I_C= I_C*10^-3;// in mA
disp(I_C,"The value of I_C in mA is");
I_E = (1+bita)*I_B;// in µA
I_E = I_E * 10^-6;// in A
I_C= I_C*10^-3;// in A
I_B= I_B*10^-6;// in A

// Part (b): To verify that the transistor is not in the active region
// Applying KVL to collector circuit, we get V_CC= I_C*R_C+V_CE+I_E*R_E or
V_CE= V_CC-I_C*R_C-I_E*R_E;// in V
if V_CE<0 then
    disp("Part (b)")
    disp("Since the value of V_CE ("+string(V_CE)+" V) is negative,")
    disp("hence the transistor is not in active region")
end

// Part (c)
V_BEsat= 0.8;// in V
V_CEsat= 0.2;// in V
// Applying KVL to base circuit, V_BB= I_B*R_B+V_BEsat+I_C*R_E+I_B*R_E, or
// I_B*(R_B+R_E)+I_C*R_E= V_BB-V_BEsat              (i)
// Applying KVL to collector circuit, V_CC= I_C*R_C+V_CEsat+(I_C+I_B)*R_E, or
// I_B*R_E+I_C*(R_C+R_E)= V_CC-V_CEsat             (ii)   
// Solving eq(i) and (ii) by matrix method
A= [(R_B+R_E) R_E;R_E (R_C+R_E)];
B= [V_BB-V_BEsat V_CC-V_CEsat];
R= B*A^-1;
I_B= R(1);// in A
I_B= I_B*10^6;// in µA
I_C= R(2);// in A
I_C= I_C*10^3;// in mA
disp("Part (c) : On assuming that the transistor is in saturation region")
disp(I_B,"The value of I_B in µA is : ")
disp(I_C,"The value of I_C  in mA is : ")
I_Bmin= I_C/bita;// in mA
I_Bmin= I_Bmin*10^3;// in µA
if I_B>I_Bmin then
    disp("Part (d) :")
    disp("Since the value of I_B ("+string(I_B)+" µA) is greater than the value of I_Bmin ("+string(I_Bmin)+" µA)")
    disp("Hence the transistor is indeed in saturation region")
end

// Pard (e) : R_E to bring the transistor out of saturation
Vcut= 0.5;//cut in voltage in V
I_B= poly(0,'I_B');// in A
I_C= bita*I_B;// in A
I_E= (1+bita)*I_B;// in A
// Applying KVL to input loop, V_BB= I_B*R_B+V_BE+(I_C+I_B)*R_E or
// I_B= (V_BB-V_BE)/(R_B+(1+bita)*R_E)                               (iii)
// I_C= bita*I_B =  (V_BB-V_BE)/(R_B+(1+bita)*R_E)*bita    (iv)
// V_B= V_BE+(1+bita)*I_B*R_E= V_BE+ (1+bita)*(V_BB-V_BE)/(R_B+(1+bita)*R_E)*R_E       (v)                 (on substituting eq(iii))
// V_C= V_CC-I_C*R_C= V_CC-(V_BB-V_BE)/(R_B+(1+bita)*R_E)*bita*R_C                                 (vi)                (on substituting eq(iv))
// but V_B-V_C<= Vcut and substituting the value from eq (v) and (vi), we get
R_E= [bita*R_C*(V_BB-V_BE)-R_B*(Vcut+V_CC-V_BE)]/[(1+bita)*(-V_BB+Vcut+V_CC)];// in ohm
R_E= R_E*10^-3;// in k ohm
disp("Part (e) : The value of R_E >= "+string(R_E)+" kΩ")

