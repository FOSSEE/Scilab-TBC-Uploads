//ex6.11
B_DC=250;
R_C=2.2*10^3;
R_E=1*10^3;
R_L=10*10^3;
R1=56*10^3;
R2=12*10^3;
V_BE=0.7;
V_CC=10;
//since B_DC*R_E>>R2
V_B=(R2/(R1+R2))*V_CC;
V_E=V_B-V_BE;
I_E=V_E/R_E;
r_e=25*10^-3/I_E;
R_in=r_e;    //input resistance
R_c=R_C*R_L/(R_C+R_L);    //ac collector resistance
A_v=R_c/r_e;
//current gain is almost 1
//power gain is approximately equal to voltage gain
A_p=A_v;
A_i=1;
disp(R_in,'input resistance in ohms')
disp(A_v,'voltage gain')
disp(A_i,'current gain')
disp(A_p,'power gain')