//example2.26
clc
disp("P=4, V=240 V, A=2 as wave, N=1000 rpm, P_out=11.19 kW")
disp("I_a=50 A, I_sh=50 A, R_a=0.1 ohm, Z=540")
disp("a) E_b=V-[(I_a)(R_a)]-Brush drop")
b=240-(50*0.1)-2
disp(b,"E_b(in V)=")
t=(233*50*60)/(2*%pi*1000)
format(9)
disp(t,"Therefore,  T(in Nm)=[(E_b)(I_a)]/w=[(E_b)(I_a)]/[(2*pi*N)/60]=")
t=(11190*60)/(2*%pi*1000)
disp(t,"b)  T_sh(in Nm)=useful torque=(P_out)/w=")
disp("c) E_b=(psi*P*N*Z)/(60*A)    i.e    233=(psi*4*100*540)/(60*2)")
p=(233*60*2)/(4000*540)
format(6)
disp(p,"Therefore,    psi(in Wb)=")
disp("Rotational losses= (T-T_sh)*w= (T-T_sh)*(2*pi*N)/60")
i=[(111.2493-106.8566)*(2*%pi*1000)]/60
format(4)
disp(i,"Therefore, Rotational losses(in W)=")
p=240*51
format(7)
disp(p,"P_in(in W)=V*(I_L)=V*(I_a+I_sh)=")
n=(11190*100)/12240
format(6)
disp(n,"% efficiency =[(P_out)*100]/(P_in)=")
