//example2.34
clc
disp("i) As a generator")
disp("(P_out)=20 kW, (V_t)=250 V")
i=20000/250
disp(i,"I_L(in A)=(P_out)/(V_t)=")
s=250/125
disp(s,"I_sh(in A)=(V_t)/(R_sh)=")
a=80+2
disp(a,"Therefore,  I_a(in A)=(I_L)+(I_sh)=")
e=250+(82*0.1)
disp(e,"E_g(in V)= (V_t)+[(I_a)*(R_a)]=")
p=258.2*82
format(7)
disp(p,"P_g(in W)=(E_g)*(I_a)=")
disp("ii) As a motor")
disp("(P_in)=20 kW, V=250 V")
i=(20000)/250
disp(i,"Therefore, I_L(in A)=(P_in)/V=")
s=250/125
disp(s,"I_sh(in A)=V/(R_sh)=")
a=80-2
disp(a,"Therefore, I_a(in A)=(I_L)-(I_sh)=")
b=250-(78*0.1)
disp(b,"Therefore, E_b(in V)=V-[(I_a)*(R_a)]=")
a=242.2*78
format(8)
disp(a,"P_a(in W)=[(E_b)*(I_a)]=")
