//ex5.7
V_CC=20;
R_C=4.7*10^3;
R_E=10*10^3;
V_EE=-20;
R_B=100*10^3;
//FOR B_DC=85 AND V_BE=0.7V
B_DC=85;
V_BE=0.7;
I_C_1=(-V_EE-V_BE)/(R_E+(R_B/B_DC));
V_C=V_CC-I_C_1*R_C;
I_E=I_C_1;
V_E=V_EE+I_E*R_E;
V_CE_1=V_C-V_E;
disp(I_C_1)
disp(V_CE_1)
//FOR B_DC=100 AND V_BE=0.6V
B_DC=100;
V_BE=0.6;
I_C_2=(-V_EE-V_BE)/(R_E+(R_B/B_DC));
V_C=V_CC-I_C_2*R_C;
I_E=I_C_2;
V_E=V_EE+I_E*R_E;
V_CE_2=V_C-V_E;
disp(I_C_2)
disp(V_CE_2)
%_del_I_C=((I_C_2-I_C_1)/I_C_1)*100;
%_del_V_CE=((V_CE_2-V_CE_1)/V_CE_1)*100;
disp(%_del_I_C,'percent change in collector currrent')
disp(%_del_V_CE,'percent change in collector emitter voltage')
//plz note that the answers differ because of the number of places after the decimal that scilab generates