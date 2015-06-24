clc
clear
//input
v=5.7*10^-4 //velocity
ro=830 //density
d=4*10^-3
V=3.2*10^3 //pd
g=9.8 //acceleration due to gravity
k=4.2*10^-4 //resistive force of air
//calculation
r=sqrt(3*k*v/(4*%pi*ro*g))//equating the forces on drop
q=4*%pi*r^3*ro*g/(3*V/d)//electric firld between plates
//output
printf("the radius of oil drop is %3.3e m",r)
printf("\n the value of electric firld between plates is %3.3e C",q)
