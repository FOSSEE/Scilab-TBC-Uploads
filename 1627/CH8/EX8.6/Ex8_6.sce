clc
//initialisation of variables
w=7*10^-2//m
v=25//m/s
a=170//deg
v1=1000//N.s^2/m^4
v2=40//m
p=1+0.9848
t=746//N.m/s
//CALCULATIONS
Q=((%pi)*(w)^2*(v))/4//m^3/s
Fx=(v1*Q*(v2-v)*p)//N
Hp=Fx*v/t//hp
//RESULTS
printf('The potential horsepower developed by the pelton wheel is=% f hp',Hp)
