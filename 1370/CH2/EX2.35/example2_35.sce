//example2.25
clc
disp("P=4, N=750 rpm, (E_g)=240 V, A=2 as wave, Z=792")
disp("(E_g)=(psi*P*N*Z)/(60*A)  i.e.  240=(psi*4*750*792)/(60*2)")
p=(240*60*2)/(4*750*792)
format(8)
disp(p,"Therefore, psi(in Wb)=")
disp("Lamda= Leakage coefficient = (Total flux)/(Useful flux)")
l=0.0145/0.01212
format(6)
disp(l,"Therefore, lamda = 0.0145/0.01212 =")
