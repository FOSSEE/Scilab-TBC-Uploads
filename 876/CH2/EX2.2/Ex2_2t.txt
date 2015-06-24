//caption:Find limiting error in percentage
//Ex2.2
clc
clear
close
V=150//maximum range of voltmeter(in V)
A=0.02//magnitude of accuracy(in V)
Vm=83//voltage measured
dA=A*V
%er=(dA/Vm)*100
disp(%er,'limiting error(in %)=')