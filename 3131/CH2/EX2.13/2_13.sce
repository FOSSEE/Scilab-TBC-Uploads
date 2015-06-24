clear all; clc;
disp("Ex 2_13")
disp(" Vector r = (3i - 2j -6k) m")
r=sqrt(3^2+(-2)^2+(-6)^2)
printf('\n\nthe magnitude of r is: r = %.0f m',r)
disp(" ")
disp("u = (3/7)i -(2/7)j -(6/7)k")
disp(" ")
disp("F = (30i-20j-60k) N")//Obtaned by multiplying vector u by given force F=70N
a1=acos(3/7)
a=a1*180/%pi
printf('\n\nalpha = %.1f degrees',a)
b1=acos((-2)/7)
b=b1*180/%pi
printf('\n\nbeta = %.0f degrees',b)
c1=acos((-6)/7)
c=c1*180/%pi
printf('\n\ngamma = %.0f degrees',c)
