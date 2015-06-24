//Example 14.5
clc
format(6)
A=500
Ri=3*10^3
Ro=20*10^3
beta=0.01
format(6)
Af=A/(1+(A*beta))
disp(Af,"Voltage gain,      Af = A / (1+A*beta) =")
Rif=(1+(A*beta))*Ri
x1=Rif*10^-3
disp(x1,"Input resistance,  Rif(k-ohm) = (1+(A*beta))*Ri =")
Rof=Ro/(1+(A*beta))
x2=Rof*10^-3
format(5)
disp(x2,"Output resistance, Rof(k-ohm) = Ro / (1+A*beta) =")