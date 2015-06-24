//example2.8
clc
disp("P=4,  A=P=4 as lap,  V=230 V,  Z=250")
disp("psi=30mWb=30*10^-3 Wb,     I_a=40 A")
disp("From voltage equation,    V=E_b+[(I_a)*(R_a)]")
disp("230=E_b+(40*0.6)")
e=230-(40*0.6)
disp(e,"Therefore,    E_b(in V)=")
disp("E_b=(psi*P*N*Z)/(60*A)")
disp("Therefore,    206=(4*N*250*30*10^-3)/(60*4)")
n=(206*240)/(250*4*30*10^-3)
disp(n,"N(in rpm)=")
