clc
//initialisation of variables
v1=4//m/sec
h=1.8//m
v2=1//m/sec
Q=6//m^3
q=1000//m/min
//CALCULATIONS
N=((q*Q)/(75))*(h+((v1^2)-(v2^2))/(2*9.81))//hp
//RESULTS
printf('the potential energy is equal the water=% f hp',N)
