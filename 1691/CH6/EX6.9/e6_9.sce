//example6.9
clc
disp("R_L=16 ohm, V_CC=25 V")
disp("Now 2N1=200, N2=50")
n=200/2
disp(n,"Therefore N1=")
n=50/100
disp(n,"Therefore n=N2/N1=")
r=16/(0.5^2)
disp(r,"Therefore R''_L =(R_L)/(n^2)=")
disp("For maximum power output, V_m=V_CC")
p=(25^2)/(2*64)
disp(p,"i) (P_ac)_max [in W]=(V_CC^2)/(2*R_L)=")
disp("ii) (P_dc)=(2*V_CC*I_m)/pi")
disp("Now  (V_m)/(I_m)=(R''_L)")
disp("and V_m=V_CC")
i=25/64
disp(i,"Therefore (I_m)=(V_CC)/(R''_L)=")
p=(2*25*0.3906)/(%pi)
disp(p,"Therefore (P_DC)[in W]=")
n=(4.8848*100)/6.2169
disp(n,"iii) %eta=(P_ac*100)/(P_DC)=")
p=(2*4.8828)/(%pi^2)
disp(p,"iv) (P_d)_max[in W]=(2*(P_ac)_max)/(pi^2)=")
