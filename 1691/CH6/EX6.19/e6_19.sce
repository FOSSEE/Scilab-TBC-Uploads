//example6.19
clc
disp("Using equation (2) from section 6.7, we can determine I_BQ.")
i=(18-0.7)/(1.2*10^3)
format(10)
disp(i,"I_BQ(in A)=")
i=40*14.4167
format(7)
disp(i,"Now (I_CQ)[in mA]=(beta*I_BQ)=")
v=18-(576.67*16*10^-3)
disp(v,"And (V_CEQ)[in V]=(V_CC)-(I_CQ*R_L)=")
p=18*576.67
disp(p,"So  P_dc(in W)=(V_CC)*(I_CQ)=")
disp("This is the input power.")
disp("Now input a.c. voltage causes a base current of 5mA rms")
disp("Therefore (I_b)_rms=5 mA")
i=40*5
disp(i,"Therefore i_c_rms(in mA)=40*5=")
disp("This is nothing but the output collector current,rms value I_rms")
disp("Therefore I_rms = 200mA")
disp("Using equation (13) from section 6.8, we can write,")
p=16*(200*10^-3)^2
disp(p,"P_ac(in W)=(I_rms^2)^R_L=")
disp("This is the power delivered to the load.")
disp("Hence the efficiency of the amplifier is,")
n=(64000*10^-3)/10.38
disp(n,"%eta=(P_ac*100)/P_dc= ")
