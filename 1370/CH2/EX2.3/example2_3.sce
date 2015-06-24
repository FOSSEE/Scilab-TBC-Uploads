//example2.3
clc
disp("Consider shunt generator as shown in the fig 2.29")
disp("I_a=(I_L)+(I_sh)")
disp("I_sh=(V_t)/(R_sh)")
disp("Now,  V_t=250 V")
disp("and,  R_sh=100 ohm")
i=250/100
disp(i,"Therefore,    I_sh(in A)=")
disp("Load power=5 kW")
disp("Therefore,    P=(V_t)*(I_L)")
i=(5*10^3)/250
disp(i,"I_L(in A)=P/(V_t)=")
i=20+2.5
disp(i,"(I_a)[in A]=(I_L)+(I_sh)=")
disp("E=(V_t)+((I_a)*(R_a))[neglect V_brush]")
E=250+(22.5*0.22)
disp(E,"Therefore,    E(in V)=")
disp("This is the induced emf to supply the given load.")
