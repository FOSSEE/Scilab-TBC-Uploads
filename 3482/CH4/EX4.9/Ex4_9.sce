clc;
//page 198
//Free body diagram
m=30//in kg
g=9.81//in m/s2
w=-m*g//in J
DC=[-480 240 -160]//in mm
X=norm(DC)
T=DC/X
disp("Tension in the vector form=")
disp(T)
//Equilibrium equations
//From equation 2, setting unit vector=0
Ax=49//in N
Ay=73.5//in N
A=[Ax Ay]
y=norm(A)
disp("Tension in the vector form in N=")
disp(y)
