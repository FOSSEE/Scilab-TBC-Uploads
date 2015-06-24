clc
clear
//input
m=140//mass
v=8//speed
r=5//radius
g=9.8//acceleration due to gravity
//calculation
t=((m*v^2/5)^2)+(140*9.8)^2 //applying parallelogram of vectors
t1=sqrt(t)
//output
printf("the tension in arm is %3.3f N",t1)
