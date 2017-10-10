//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//percentage fluctuation in speed
//initialisation of variables
g=32.2//ft
p=275//rev/min
w=1/2*p//ft
d=15//hp
h=33000//ft
r=0.8//ft
h1=2240//ft
m=p*(2*%pi/60)//rad/s
//CALCULATIONS
W=(d*h)/w//ft lbf
E=r*W//ft lbf
I=(1*h1*(3)^2)/(g)//slug ft^2
Q=(E*100)/(I*(m)^2*2)//percent
//RESULTS
printf('the percentage fluctuation in speed=% f percent',Q)
