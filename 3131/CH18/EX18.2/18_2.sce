clear all; clc;
disp("Ex 18_2")
m=10//kg
w=m*9.81//converting mass to weight
x=1.5//displacement
Uw=w*x
printf('\n\n Uw = %0.1f J',Uw)
//Couple moment M
M=50//moment in Nm
theta=%pi/2
Um=M*theta
printf('\n\n Um = %0.1f J',Um)
//at theta=0, spring is stretched by 0.25m and when theta=90, spring is stretched by 2.25m
k=30//spring constant in N/m
a=0.25//at theta=0, spring deflection in m
b=2.25//at theta=90, spring deflection in m
Us=-((0.5*k*b^2)-(0.5*k*a^2))
printf('\n\n Us = %0.1f J',Us)
//Force P
P=80//N
y=%pi*3/2//displacement in m
Up=P*y
printf('\n\n Up = %0.1f J\n\',Up)
//Total work of all the forces,
U=Uw+Um+Us+Up
disp("Total work of all the forces,")
printf('\n U = %0.0f J',U)
