clc
// initialization of variables
clear
L=1 //m
b=40 //mm
h=75 //mm
SF=2.5
K=1
L=L*10^3
Iy=b*h^3/12
A=b*h
ry=sqrt(Iy/A)
K_y=K*L/ry
rz=b/sqrt(12)
K=0.5
K_z=K*L/rz
S_cr=229 //MPa
P_cr=S_cr*A
P=P_cr/SF
printf('P = %d kN',P/10^3)
