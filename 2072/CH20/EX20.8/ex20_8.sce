//Ex20.8
clc;
uo=4*%pi*10^-7//in m/A
N=300
A=4*10^-4//in m^2
l=25*10^-2
L=(uo*N*N*A)/l
disp("Solution a")
disp(L,"Inductance in H=")
delta_I=-5
delta_t=1
e=(-L*delta_I)/(delta_t)


disp("Solution b")
disp(e,"Emf in Volt=")