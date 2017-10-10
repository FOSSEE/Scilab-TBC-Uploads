clc;
disp("Example 3.13")
density=1000 // in kg/m^3
b= 0.005 // gap between plates in m
mew=0.1 // viscosity in kg/ms
q=1/60 // in m^3/s/m
U= q/b
// here the pressure gradient is delP= 12*mew*U/b*b
delP= (12*mew*U)/(b*b)
Re= b*U*density/mew
disp(" Reynolds number is ")
disp(Re)
