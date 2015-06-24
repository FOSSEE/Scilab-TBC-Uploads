//Chapter 8
//Page 218
//Example 8.3
//TranformerControl
clear;clc;
//Given
Z = 0.8 + %i * 0.6;
V2 = 1;
Z_Ta = %i * 0.1;Z_Tb = %i * 0.1;
a=1.05;
I2 = - V2 / Z;
Y21_Ta = - 1/Z_Ta;Y22_Ta = 1/Z_Ta;
disp('For transformer Ta Y21 and Y22 in per unit is')
disp(Y21_Ta);disp(Y22_Ta);
Y21_Tb = - (1/Z_Ta) / a;Y22_Tb = (1/Z_Ta) / a^2;
disp('For transformer Tb Y21 and Y22 in per unit is')
disp(Y21_Tb);disp(Y22_Tb);
Y21 = Y21_Ta + Y21_Tb;Y22 = Y22_Ta + Y22_Tb;
disp('For the two transformers in parallel')
disp(Y21,'Y21 in per unit');disp(Y22,'Y22 in per unit');
V1 = (I2 - Y22 * V2) / Y21;
disp(V1,'V1 in per unit =')
V_1_2 = V1 - V2;
disp(V_1_2,'Difference between V1 and V2 in per unit')
I_Ta = V_1_2 * Y22_Ta;
I_Tb_a1 = -I2 - I_Ta;
S_Ta = V2 * I_Ta';
S_Tb = V2 * I_Tb_a1';
disp('Complex power transmitted from the two transformers to the load')
disp(S_Ta,'From transformer Ta in per unit')
disp(S_Tb,'From transformer Tb in per unit')