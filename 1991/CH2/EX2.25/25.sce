clc
clear
//input
f=9//frequency
x=0//at midpoint of stroke x=0
//calculation
t=1/f
a=-4*%pi^2*f^2*x//acceleration for shm
v=2*%pi*f*0.05//velocity for shm
a1=-4*%pi^2*9^2*0.05//acceleration at amplitude
v1=0//velocity at amplitude is 0
//output
printf("the period of oscillation is %3.3f s^-1",t)
printf("\n the velocity  at midpoint of stroke is %3.3f ms^-1",v)
printf("\n the acceleration at midpoint of stroke is %3.3f ms^-2",a)

printf("\n the velocity at amplitude is %3.3f  ms^-1",v1)
printf("\n the acceleration at amplitude is %3.3f ms^-2",a1)
