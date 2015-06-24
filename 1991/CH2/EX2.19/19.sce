clc
clear
//input
m=5*10^24//mass of earth
g1=6.7*10^-11
//calculation
r=((6.7*10^-11*5*10^24*(3600*24)^2)/(4*%pi^2))^(1/3)//orbit radius
v=(2*%pi*r)/(3600*24)//linear velocity
//output
printf("the orbit radius is %3.3f",r)
printf("\n the linear velocity is %3.3f ms^-1",v)
