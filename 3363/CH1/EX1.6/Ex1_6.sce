//Example 1.6, apge 39
clc
g=9.8//in m/s^2, constant
l=.1//in m
m=0.01//in kg
h=6.63*10^-34//Joule-sec
theta=0.1//in radians
v=(1/(2*%pi)*sqrt(g/l))
printf("\n Oscillation frequency of pendulam %f per sec.",v)
E=m*g*l*(1-cos(theta))
printf("\n Energy of pendulum at its maximum potential %e Joule.",E)
Delta_e=h*v
printf("\n Delta E %e Joule",Delta_e)