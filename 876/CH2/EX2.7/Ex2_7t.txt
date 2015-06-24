//caption:find the limiting error for the power calculated
//Ex2.7
clc
clear
close
A=0.01//magnitude of accuracy
V=150//range of voltmeter(in V)
Vr=100//Reading of voltmeter(in V)
I=100//range of ammeter(in mA)
Ir=55//ammeter reading(in mA)
dV=A*V
dEv=(dV/Vr)*100
dA=A*I
dEi=(dA/Ir)*100
dE=(dEv+dEi)
disp(dE,'limiting error for the power calculated(in %)=')