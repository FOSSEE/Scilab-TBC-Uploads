clc
L_A=0.003; //m
L_B=0.05; //m
L_C=L_A;

k_A=46.5; //W/m 0C
k_B=0.046; //W/m 0C
k_C=k_A;
h0=11.6; //W/m^2 0C
hi=14.5; //W/m^2 0C
t0=25; //0C
ti=6; //0C

A=0.5*0.5*2+0.5*1*4; //m^2

disp("(i) The rate of removal of heat =")
Q=A*(t0-ti)/(1/h0 + L_A/k_A + L_B/k_B + L_C/k_C + 1/hi);
disp(Q)
disp("W")


disp("(ii) The temperature at the outer surface of the metal sheet =")
t1=t0-Q/h0/A;
disp(t1)
disp("0C")