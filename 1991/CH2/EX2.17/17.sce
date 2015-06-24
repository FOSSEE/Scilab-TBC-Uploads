clc
clear
//input
v=15//velocity
m=70//mass
r=50//radius
//calculation
x=v*v/(r*10)//applying parallelogram of vectors,then for equilibrium
y=atand(x)
r1=(m*10)/cosd(y)
//output
printf("the inclination is %3.3f deg",y)
printf("\n the reaction is %3.3f N",r1)
