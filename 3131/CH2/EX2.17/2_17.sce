clear all; clc;
disp("Ex 2_17")
disp("r_BA = (-2i -2j +1k) m")
disp(" ")
disp("r_BC = (-3j +1k) m")
a=sqrt(10)
b=3*a
c=(-2)*0
d=(-2)*(-3)
e=1*1
f=c+d+e
g1=acos(f/b)
g=g1*180/%pi
printf('\n\nTheta = %.1f degrees',g)
disp(" ")
disp("u_BA = -2/3i - 2/3j + 1/3k")//obtained by dividing the vector r_BA by the magnitude of vector r_BA
disp("Force F in Cartesian vector form is: F = (-75.89j + 25.30k)")
disp("F_BA = 59.0 N")//obtained by taking the dot product of vectors F and u_BA
h=80*cos(g1)
printf('\n\nMagnitude of F_BA is: F_BA = %.1f N',h)
i=80*sin(g1)
printf('\n\nMagnitude of perpendicular component is: F_perp = %.1f N',i)
j=sqrt(80^2-59^2)
printf('\n\nMagnitude of perpendicular component by pythagoras theorem is: F_perp = %.1f N',j)
