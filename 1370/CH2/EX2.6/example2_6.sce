//example2.6
clc
disp("Consider a short shunt generator as shown in the fig 2.32")
disp("R_a=0.04 ohm,   R_sh=90 ohm,   R_se=0.02 ohm")
disp("V_t=225 V ,   I_L=75 A")
disp("I_a = I_L + I_sh")
disp("Now,      E=(V_t)+[(I_a)*(R_a)]+[(I_L)*(R_se)]")
disp("and drop across armature terminals is,")
disp("E-[(I_a)*(R_a)]=(V_t)+[(I_t)*(R_se)]")
e=225+(75*0.02)
disp(e,"Therefore,    E-[(I_a)*(R_a)]=")
disp("Therefore,    I_sh=[E-(I_a)(R_a)]/(R_sh)=[(V_t)+(I_L)(R_se)]/(R_sh)")
i=226.5/90
format(7)
disp(i,"Therefore,    I_sh(in A)=")
i=75+2.5167
disp(i,"Therefore,    I_a=I_L+I_sh=")
disp("Therefore,     E=V_t+[(I_a)*(I_sh)]+[(I_L)*(R_se)]")
e=225+(77.5167*0.04)+(75*0.02)
format(6)
disp(e,"E(in V)=")
