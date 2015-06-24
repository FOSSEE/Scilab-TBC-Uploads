//ex5.6
V_CC=12;
R_B=100*10^3;
R_C=560;
//FOR B_DC=85 AND V_BE=0.7V
B_DC=85;
V_BE=0.7;
I_C_1=B_DC*(V_CC-V_BE)/R_B;
V_CE_1=V_CC-I_C_1*R_C;
//FOR B_DC=100 AND V_BE=0.6V
B_DC=100;
V_BE=0.6;
I_C_2=B_DC*(V_CC-V_BE)/R_B;
V_CE_2=V_CC-I_C_2*R_C;
%_del_I_C=((I_C_2-I_C_1)/I_C_1)*100;
%_del_V_CE=((V_CE_2-V_CE_1)/V_CE_1)*100;
disp(%_del_I_C,'percent change in collector current')
disp(%_del_V_CE,'percent change in collector emitter voltage')