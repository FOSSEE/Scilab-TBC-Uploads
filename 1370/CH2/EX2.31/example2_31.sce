//example2.31
clc
disp("P=8, N=400 rpm, psi=40 mWb, Z=960")
disp("a) Lap wound, A=P=8")
e=(8*400*960*40*10^-3)/(60*8)
disp(e,"E_g(in V)=(psi*P*N*Z)/(60*A)=")
disp("b) Wave connected, A=2, E_g =400 V")
disp("Therefore, (E_g)=(psi*P*N*Z)/(60*A)  i.e.  400=[(40*10^-3)*8*N*960]/(60*2)")
n=(400*60*2)/(0.04*8*960)
disp(n,"Therefore,  N(in rpm)=")
