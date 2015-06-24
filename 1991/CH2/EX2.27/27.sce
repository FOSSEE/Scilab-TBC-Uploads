clc
clear
//input
p1=2.3//period of pendulum
p2=3.1//period when pendulum is lengthened
//calculation
g=4*%pi^2/(p2^2-p1^2)//acceleration of free fall
l=p1^2*g/(4*%pi^2)//length of pendulum
//output
printf("the acceleration of free fall is %3.3f m/s^2",g)
printf("\n the length of pendulum is %3.3f m",l)
