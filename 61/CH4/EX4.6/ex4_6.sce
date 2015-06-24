//ex4.6
P_D_max=800*10^-3;
V_BE=0.7;
V_CE_max=15;
I_C_max=100*10^-3;
V_BB=5;
B_DC=100;
R_B=22*10^3;
R_C=10^3;
I_B=(V_BB-V_BE)/R_B;
I_C=B_DC*I_B;
V_R_C=I_C*R_C;    //voltage drop across R_C
V_CC_max=V_CE_max+V_R_C;
P_D=I_C*V_CE_max;
if P_D<P_D_max then
    disp(V_CC_max,'V_CC in volts')
    disp('V_CE_max will be exceeded first becauseentire supply voltage V_CC will be dropped across the transistor')
end