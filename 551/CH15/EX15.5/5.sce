clc
k_A=150; //W/m 0C
k_B=30; //W/m 0C
k_C=65; //W/m 0C
k_D=50; //W/m 0C

L_A=0.03; //m
L_B=0.08; //m
L_C=L_B;
L_D=0.05; //m

A_A=0.01; //m^2
A_B=0.003; //m^2
A_C=0.007; //m^2
A_D=0.01; //m^2

t1=400; //0C
t4=60; //0C

R_thA=L_A/k_A/A_A;
R_thB=L_B/k_B/A_B;
R_thC=L_C/k_C/A_C;
R_thD=L_D/k_D/A_D;

R_th_eq=R_thB*R_thC/(R_thB+R_thC);
R_th_total=R_thA+R_th_eq+R_thD;

Q=(t1-t4)/R_th_total;
disp("Q=")
disp(Q)
disp("W")