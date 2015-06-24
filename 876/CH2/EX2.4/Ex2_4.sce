//caption:Find limiting error
//Ex2.4
clc
clear
close
V1=500//referance reading of voltmeter(in V)
V2=150//Voltage at which limiting error to be calculated(in V)
Ar=0.015//magnitude of accuracy limit
dA=Ar*V1
er=(dA/V2)*100
disp(er,'limiting error(in %)=')