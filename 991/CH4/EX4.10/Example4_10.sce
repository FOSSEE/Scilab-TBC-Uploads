//Example 4.10.
clc
format(8)
ND=(4.2*10^28)/10^6
disp(ND,"Density of added impurity atoms is, ND(atoms/m^3) = ")
ni=2.5*10^19
format(10)
p=ni^2/ND
disp("Also, n = ND")
disp(p,"Therefore,  p(m^-3) = ni^2 / n = ni^2 / ND =")
disp("Here, as p << n, p may be neglected.")
q=1.6*10^-19
un=0.38
sigma=q*ND*un
disp(sigma,"Therefore,  sigma(S/m) = q*ND*un =")
format(9)
rho=1/sigma
disp(rho,"Therefore,  resistivity, rho(ohm-m) = 1 / sigma =")
format(5)
L=5*10^-3
A=5*10^-6
R=(rho*L)/A^2
R1=R*10^-3
disp(R1,"Resistance,  R(k.ohm) = rho*L / A =")
I=10^-6
V=R*I
V1=V*10^3
disp(V1,"Voltage drop,  V(mV) = RI =")