//example2.22
clc
disp("P=4, A=2, psi=0.0121 Wb, Z=792, E_g=240 V")
disp("(E_g)=(psi*P*N*Z)/(60*A)   i.e.   240=(0.0121*4*N*792)/(60*2)")
n=(480*60)/(792*4*0.0121)
format(9)
disp(n,"Therefore,      N(in rpm)=")
