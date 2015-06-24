//ex6.10
V_CC=12;
V_BE=0.7;
R_C=10^3;
r_e_ce=5;    //for common emitter amplifier
R1=10*10^3;
R2=22*10^3;
R_E=22;
R_L=8;
B_DC=100;
B_ac=100;
V_B=((R2*B_DC^2*R_E/(R2+B_DC^2*R_E))/(R1+(R2*B_DC^2*R_E/(R2+B_DC^2*R_E))))*V_CC;
V_E=V_B-2*V_BE;
I_E=V_E/R_E;
r_e=25*10^-3/I_E;    //for darlington emitter-follower
P_R_E=I_E^2*R_E;    //power dissipated by R_E
P_Q2=(V_CC-V_E)*I_E    //power dissipated by transistor Q2
R_e=R_E*R_L/(R_E+R_L);    //ac emitter resistance of darlington emitter follower
R_in_tot=R1*R2*B_ac^2*(R_e+r_e)/(R1*R2+R1*B_ac^2*(r_e+R_e)+R2*B_ac^2*(r_e+R_e));    //total input resistance of darlington
R_c=R_C*R_in_tot/(R_C+R_in_tot);    //effective ac resistance
A_v_CE=R_c/r_e_ce;
disp(A_v_CE,'voltage gain of common emitter amplifier')
A_v_EF=R_e/(r_e+R_e);
disp(A_v_EF,'voltage gain of darlington emitter follower')
A_v=A_v_CE*A_v_EF;
disp(A_v,'overall voltage gain')