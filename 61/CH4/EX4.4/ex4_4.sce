//ex4.4
V_CE_sat=0.2;
V_BE=0.7;
V_BB=3;
V_CC=10;
B_DC=50;
R_B=10*10^3;
R_C=1*10^3;
I_C_sat=(V_CC-V_CE_sat)/R_C;
I_B=(V_BB-V_BE)/R_B;
I_C=B_DC*I_B;
if I_C>I_C_sat then
    disp('transistor in saturation')
else
    disp('transistor not in saturation')
end