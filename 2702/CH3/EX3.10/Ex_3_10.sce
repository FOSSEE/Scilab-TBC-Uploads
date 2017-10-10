// Exa 3.10
clc;
clear;
close;
// Given data 
V_CC= 10;// in V
V_BB= 3;// in V
V_BE= 0.7;// in V
V_T= 25*10^-3;// in V
bita=100;
RC= 3;// in kΩ
RC=RC*10^3;// in Ω
RB= 100;// in kΩ
RB=RB*10^3;// in Ω
I_B= (V_BB-V_BE)/RB;// in V
I_C= bita*I_B;// in A
V_C= V_CC-I_C*RC;// in V
gm= I_C/V_T;// in A/V
r_pi= bita/gm;// in Ω
// v_be= r_pi/(RB+r_pi)*v_i
v_be_by_v_i= r_pi/(RB+r_pi);
// v_o= -gm*v_be*RC
v_o_by_v_i= -gm*v_be_by_v_i*RC;// in V/V
Av= v_o_by_v_i;// in V/V
disp(round(Av),"Voltage gain in V/V is : ")
