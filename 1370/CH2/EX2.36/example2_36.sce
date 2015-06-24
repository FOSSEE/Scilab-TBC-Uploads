//exmaple2.26
clc
disp("(P_out)=1500 kW, (V_t)=550 V, P=10, A=P as lap, N=150 rpm, Z=2500, (P_cu)=25 kW, B=0.9 Wb/m^2")
i=(1500*1000)/550
format(10)
disp(i,"I_L(in A)=(P_out)/(V_t)=")
disp("As R_sh is not given, neglect I_sh hence (I_a)=2727.2727 A")
disp("a)  P_cu = Armature copper loss = [(I_a)^2]*(R_a)")
disp("25*10^3 = (2727.2727)^2 * (R_a)")
a=25000/[(2727.2727)^2]
format(9)
disp(a,"Therefore, (R_a)[in ohm]=")
e=550+(2727.2727*3.3611*0.001)
disp(e,"Therefore, E_g(in V)=(V_t)+[(I_a)*(R_a)]=")
disp("This is load terminal voltage.")
disp("b) (E_g)=(psi*P*N*Z)/(60*A)  i.e.  559.1667=(psi*10*150*2500)/(60*10)")
p=(559.1667*60*10)/(1500*2500)
format(8)
disp(p,"Therefore, psi(in Wb)=")
disp("Now, B=(psi)/A  i.e  0.9=(0.08946)/A")
a=0.08946/0.9
disp(a,"Therefore, A(in m^2)=")
