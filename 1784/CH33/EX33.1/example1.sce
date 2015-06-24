//chapter 33
//example1
clc
//given
K=5*10^6 //ev
e=1.6*10^-19 //in coul
K1=K*e //in joules
m=1.7*10^-27 //in kg
B=1.5 //wb/m
theta=%pi/2
v=sqrt(2*K1/m)
disp(v,"Speed of the proton in meters/sec is")
F=e*v*B*sin(theta)
disp(F,"Force acting on proton in nt is")
