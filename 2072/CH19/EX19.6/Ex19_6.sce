//Example 19.6
clc
q=1.6*10^-19
B=.10//in T
v=1*10^6//in m/s
r=14*10^-2//in m
m1=1.67*10^-27//in kg
m2=3.34*10^-27//in kg
r1=(m1*v)/(q*B)
r2=(m2*v)/(q*B)
x=(2*r2)-(2*r1)
disp(r1,"Radius of lighter istope in m=")
disp(r2,"Radius of heavier istope in m=")
disp(x,"Distance of seperation in m=")