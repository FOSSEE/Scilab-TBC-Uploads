//Chapter 26
clc
//Example5
//given
c=3*10^8 //velocity of light in m/sec
m=9.11*10^-31 //mass of electron in kg
v=0.75*c
gamma=1/sqrt(1-(v^2/c^2))
//relativistic momentum
p=m*v*gamma
disp(p,"relativistic momentum in kg.m/s is")
//classical approach
P=m*v
disp(P,"classical momentum in kg.m/s is")
Z=(p-P)*100/P
printf("the relativistic result is %d percent greater than classical result",Z)


