clc
clear
//input
m1=1//mass of object 1
v1=25//velocity of object 1
m2=2//mass of object 2
v2=0//body at rest,velocity =0
v3=10
//caclulation
u=((m1*v1)+(m2*v2)-(m2*v3))/2//applying princilpe of conservation of linear momentum
//output
printf("\n the value of u is %3.3f ms^-1",-u)
