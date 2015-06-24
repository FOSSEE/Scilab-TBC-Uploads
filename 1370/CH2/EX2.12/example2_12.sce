//example2.12
clc
disp("V=250 V,  I_L=20 A,   R_s=0.3ohm,  R_sh=200 ohm")
disp("I_L=(I_a)+(I_sh)")
s=250/200
disp(s,"(I_sh)[in A]=V/(R_sh)=")
disp("Therefore,    I_a=(I_L)-(I_sh)")
a=20-1.25
disp(a,"I_a(in A)=20-1.25=")
disp("Now,  V=(E_b)+(I_a*R_a)")
disp("Therefore,    E_b=V-[(I_a)*(R_a)]")
b=250-(18.75*0.3)
format(8)
disp(b,"E_b(in V)")
