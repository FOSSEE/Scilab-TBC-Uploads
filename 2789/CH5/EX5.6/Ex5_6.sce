clear;
clc;

//page no. 166

V_0 = 586;// fps
t_0 = 0;// degreeF
P_0 = 13;// psia
a_0 = 1052;// fps
M_0 = 0.557;
V_A = 800;//fps
V_B = 900;//fps
gam = 1.4;
T_A = 488.5- V_A^2 /(2*32.2*186.5);
T_B = 488.5- V_B^2 /(2*32.2*186.5); 
p_A = 16.18*(T_A/488.5)^(gam/(gam-1));
p_B = 16.18*(T_B/488.5)^(gam/(gam-1));
a_A = sqrt(gam*32.3*53.3*T_A);
a_B = sqrt(gam*32.3*53.3*T_B);
M_A = V_A/a_A;
M_B = V_B/a_B;
printf('At point A, p = %.2f psia, T = %.1f degreeR, a = %d fps, M = %.3f',p_A,T_A,a_A,M_A);
printf('\n At point B, p = %.2f psia, T = %.1f degreeR, a = %d fps, M = %.3f',p_B,T_B,a_B,M_B);

//there are errors in the answers given in textbook
