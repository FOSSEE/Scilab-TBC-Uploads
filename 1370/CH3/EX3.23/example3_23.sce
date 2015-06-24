//example3.23
clc
disp("V_0=220 V, I_0=0.5 A, W_0=30 W, R1=0.6ohm")
disp("W_0=(V_0)*(I_0)*cos(phi_0)    i.e.    cos(phi_0)=30/(220*0.5)")
c=30/(220*0.5)
format(8)
disp(c,"Therefore, cos(phi_0)=")
p=acosh(0.27272)
disp(p,"i.e.  (phi_0)[in degree]=")
k=110/220
disp(k,"a) K=Turns ratio=Secondary voltage/Primary voltage=110/220=")
i=0.5*0.27272
disp(i,"b) I_m(in A)=(I_0)*cos(phi_0)=0.5*0.27272=")
i=0.5*sind(74.1733)
format(6)
disp(i,"I_c(in A)=(I_0)*sin(phi_0)=0.5*sin(74.1733)=")
p=30-((0.5^2)*0.6)
disp(p,"P_i(in W)=Iron loss=(W_0)-No load copper loss=(W_0)-(I_0^2)*R1=")
