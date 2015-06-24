clc
//Example 17.3
//Calculate the distance between the wall and edge of the laminar sublayer and buffer layer
V=10//ft/s
l=0.25//ft
v=1.08*10^(-5)//ft^2/s
R=V*l/v//dimentionless (reynold's number)
f=0.0037//dimentionless (fanning friction factor)
u1=V*(f/2)^0.5//ft/s
u01=5//dimentionless
y01=5//dimentionless
r1=y01*v/u1//ft
printf("the distance between the wall and edge of the laminar sublayer is %f ft\n",r1);
//for buffer layer
u02=12//dimentionless
y02=26//dimentionless
r2=y02*v/u1//ft
printf("the distance between the wall and edge of the buffer layer is %f ft",r2);