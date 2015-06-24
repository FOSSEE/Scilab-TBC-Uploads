//Example 19.9
clc
N=100//turns
l=.1//in m
n=N/l//in turns/m
mo=4*%pi*10^-7//Tm/A
I=.5//in A
B=n*I*mo
q=1.6*10^-19//in c
v=375//in m/s
F=q*v*(B/2)

disp(B,"Magnetic field in T=")
disp(F,"Force in N=")
