//example2.32
clc
disp("V=250 V, (R_a)=0.3 ohm, (I_L)=20 A, (R_sh)=200 ohm")
s=250/200
disp(s,"I_sh(in A)=V/(R_sh)=")
a=20-1.25
disp(a,"I_a(in A)=(I_L)-(I_sh)=")
b=250-(18.75*0.3)
format(8)
disp(b,"E_b(in V)=V-[(I_a)(R_a)]=")
m=244.375*18.75
format(10)
disp(m,"P_m(in W)=[(E_b)*(I_a)]=")
