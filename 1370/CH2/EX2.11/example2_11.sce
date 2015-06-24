//example2.11
clc
disp("P=4,  Z=200,  A=2,  psi=25*10^-3 Wb")
disp("(I_a)=(I_L)=60 A,     R_a=0.15ohm,    R_se=0.2 ohm")
disp("V=(E_b)+(I_a*R_a)+(I_a*R_se)")
disp("250=E_b+60(0.15+0.2)")
b=250-(60*(0.15+0.2))
disp(b,"E_b(in V)=")
disp("Now,  E_b=(psi*P*N*Z)/(60*A)")
disp("Therefore,    229=(25*(10^-3)*4*N*200)/(60*2)")
n=(229*60*2)/(800*25*10^-3)
disp(n,"Therefore, N(in rpm)=")
