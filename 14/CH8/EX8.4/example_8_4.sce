//Chapter 8
//Page 221
//Example 8.4
//Tapchange
clear;clc;
//Given
Z = 0.8 + %i * 0.6;
V2 = 1;
Z_Ta = %i * 0.1;Z_Tb = %i * 0.1;
Z1_Tb = %i*0.1;Z2_Tb = %i*0.1;
a=1 * (cos(3*%pi/180) + %i * sin(3*%pi/180));
I2 = - V2 / Z;
Y21_Ta = - 1/Z_Ta;Y22_Ta = 1/Z_Ta;
Y21_Tb = Y21_Ta / a';Y22_Tb = Y22_Ta / (abs(a))^2;
printf("\n Y21 = %.2f /_%.2f per unit \n",abs(Y21_Tb),atan(imag(Y21_Tb),real(Y21_Tb))*180/%pi)
printf("\n Y21 = -%.2fj per unit \n",abs(Y22_Tb))
Y21 = Y21_Ta + Y21_Tb;Y22 = Y22_Ta + Y22_Tb;
disp('For the two transformers in parallel')
disp(Y21,'Y21 in per unit');disp(Y22,'Y21 in per unit');
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
V = a - V2;
I = I2/2;
I_circ = V / (Z1_Tb + Z2_Tb);
I_Ta_1 = - I - I_circ;
I_Tb_1 = -I + I_circ;
S_Ta_1 = V2 * I_Ta_1';
S_Tb_1 = V2 * I_Tb_1';
disp('Complex power transmitted from the two transformers to the load')
disp(S_Ta_1,'From transformer Ta in per unit')
disp(S_Tb_1,'From transformer Tb in per unit')