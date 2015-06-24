// Exa 6.10
format('v',6)
clc;
clear;
close;
// Given data
Beta= 100;
V_CC= 12;// in V
V_BE= 0;// in V
I_B= 0.3*10^-3;// in A
R_C= 300;// in Ω
// Applying KVL for input side, V_CC= I_B*R_B+V_BE or
R_B= (V_CC-V_BE)/I_B;// in Ω
R_B= R_B*10^-3;// in k ohm
disp(R_B,"The value of base resistor in kΩ is : ")
I_C= Beta*I_B;// in A
// The collector to emitter voltage 
V_CE= V_CC-I_C*R_C;// in V
disp(V_CE,"The collector to emitter voltage in V is : ")
// The stability factor,
S= 1+Beta;
disp(S,"The stability factor is : ")
