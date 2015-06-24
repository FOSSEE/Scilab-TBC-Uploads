clc
L_A=0.2; //m
L_C=0.006; //m
L_D=0.1; //m
t1=1150; //0C
t2=40; //0C
dt=t1-t2;
k_A=1.52; //W/m 0C
k_B=0.138; //W/m 0C
k_D=0.138; //W/m 0C
k_C=45; //W/m 0C
q=400; //W/m^2

disp("(i) The value of x = (L_C) ")
L_B=((t1-t2)/q - (L_A/k_A+L_C/k_C+L_D/k_D))*k_B*1000;
disp("L_B =")
disp(L_B)
disp("mm")


disp("(ii) Temperature of the outer surface of the steel plate t_so =")
t_so=q*L_D/k_D + t2;
disp(t_so)
disp("0C")