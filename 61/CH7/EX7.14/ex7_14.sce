//EX7.14
I_D_on=500*10^-3;
V_GS=10;
V_GS_th=1;
K=value_of_K(500*10^-3,10,1)
V_GS=5;
I_D=K*(V_GS-V_GS_th)^2;
disp(I_D,'Drain current')