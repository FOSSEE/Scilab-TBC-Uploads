clear;
disp("Example 7.4")
d=0.0025 // in m
G=50000/3600  // in kg/m^2/s
mew=0.1  // in kg/ms
Re= d*G/mew
density=1250
U=G/density
P=250000
y=P*d*d/(150*U*mew)
//we need to solve equation y*x^3+x^2-1=0
p=[y,-1,2,-1]
z=roots(p)
disp(z(3,1),"Porosity is ")
