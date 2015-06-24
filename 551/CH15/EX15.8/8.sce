clc
L_A=0.25; //m
L_B=0.1; //m
L_C=0.15; //m
k_A=1.65; //W/m °C
k_C=9.2; //W/m °C
t_hf=1250; //°C
t1=1100; //°C
t_cf=25; //°C
h_hf=25; //W/m^2 °C
h_cf=12; //W/m^2 °C

disp("(i) Thermal conductivity =")
q=h_hf*(t_hf-t1);

k_B=L_B/((t_hf-t_cf)/q-1/h_hf-L_A/k_A-L_C/k_C-1/h_cf);
disp(" Thermal conductivity,k=")
disp(k_B)
disp("W/m^2 °C")


disp("(ii) The overall transfer coefficient =")
R_th_total=1/h_hf+L_A/k_A+L_B/k_B+L_C/k_C+1/h_cf;
U=1/R_th_total;
disp(U)
disp("W/m^2 °C")


disp("(iii) All surface temperature ")

disp("t1=")
disp(t1)
disp("°C")

t2=t1-q*L_A/k_A;
disp("t2=")
disp(t2)
disp("°C")

t3=t2-q*L_B/k_B;
disp("t3=")
disp(t3)
disp("°C")

t4=t3-q*L_C/k_C;
disp("t4=")
disp(t4)
disp("°C")