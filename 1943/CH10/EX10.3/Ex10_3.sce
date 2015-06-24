
clc
clear
//Input data
P=10//Capacity in MW
h=500//Head in m
Ns=10//Specific speed of the turbine
on=80//Overall efficiency in percent
Cv=0.98//Coefficient of velocity
x=0.46//Speed of the bucket wheel to the velocity of jet
da=1000//Density in kg/m^3

//Calculations
N=(Ns*h^(5/4))/sqrt(P*10^3)//Speed in r.p.m
V=(Cv*sqrt(2*9.81*h))//Velocity in m/s
Vb=(x*V)//Speed of bucket wheel in m/s
D=((60*Vb)/(3.14*N))//Diameter in m
d=sqrt((P*10^6)/((on/100)*(3.14/4)*da*V*9.81*h))//Diameter in m

//Output
printf('Diameter of jet is %3.3f m \n Diameter of bucket wheel is %3.2f m',d,D)
