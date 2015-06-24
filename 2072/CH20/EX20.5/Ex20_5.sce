//Example 20.5
clc;
f=60//in Hz
w=2*%pi*f
N=8
A=.09//in m^2
B=.5//in T
emf=N*A*B*w
disp("Solution a")
disp(emf,"Induced emf in volt=")
R=12//in ohm
I=emf/R
disp("Solution b")
disp(I,"Current in A=")

disp("Solution c")
disp("Emf in Volt 136*sinwt=")