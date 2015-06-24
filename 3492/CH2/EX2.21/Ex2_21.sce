clc
//Chapter2
//Ex_2.21
//Given
sigma=50*10^-9//in ohm
T=300 //kelvin
C_WFL=2.45*10^-8 //in W*ohm/K2 
L=30*10^-3 //in m
d=20*10^-3 //in m
Q=10 //in W
//Wiedemann-Franz Lorenz Law
k=sigma^-1*T*C_WFL //thermal conductivity
A=%pi*(d^2)/4
theta=L/(k*A) //thermal resistance
delta_T=theta*Q
disp(delta_T,"Temperature drop across the disk in degree celcius is")
