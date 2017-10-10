clc;
disp("Example 8.2")
U=1.5 // in m/s
d=0.025 // in m
density= 1000 // in kg/m^3
mew=0.001 // in kg/ms
Re=d*density*U/mew
f=0.079/(Re^0.25)
l=25 // length of the pipe in m
delP=2*f*density*U*U*l/d
h1=delP/(density*9.81)
disp(h1,"Head loss is ")
h2=15
h=h1+h2
flow=%pi*d*d*U*density/4
power=flow*h*9.81
disp(power,"Theoretical Power required is ")
