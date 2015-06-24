clc
//Chapter7
//Ex_12
//Given
Eo=8.85*10^-12//F/m2
Er=1000
D=3*10^-3 //in m
V=5000 // in V
d=200*10^-12 //in m/V
L=10*10^-3 //in mm
A=%pi*(D/2)^2
F=Eo*Er*A*V/(d*L)
disp(F,"Force required to spark the gap in Newton is")
