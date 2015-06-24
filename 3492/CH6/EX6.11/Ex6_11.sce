clc
//Chapter6
//Ex_11
//Given
Z=50*10^-6 //in m
L=10*10^-6 //in m
t_ox=450*10^-10 //in m
V_GS=8//in V
V_th=4//in V
V_DS=20//in V
lambda=0.01
ue=750*10^-4 //in m2/V/s
epsilon_r=3.9
epsilon_o=8.85*10^-12//F/m2
epsilon=epsilon_r*epsilon_o
K=(Z*ue*epsilon)/(2*L*t_ox)
I_DS=K*(V_GS-V_th)^2*(1+lambda*V_DS)
disp(I_DS*10^3,"drain current in mA is")
