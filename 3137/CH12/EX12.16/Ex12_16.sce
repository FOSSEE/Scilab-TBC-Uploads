//Initilization of variables
t=4 //s
//Calculations
//Part (a)
x=t^3 //in
y=-2*t^2 //in
z=2*t //in
//Part (b)
//Theory question
//Part(c)
//Unit vector calculation
m=sqrt(4^2+1^1+(-3)^2)
e_l=[4/m,1/m,-3/m]
v=[3*t^2,-4*t,2] //in/s
//Projection of v on n at t=4s
dot=v.*e_l //in/s
a=dot(1)+dot(2)+dot(3) //in/s
//Result
clc
printf('The co-ordinates of position are x=%fin,y=%fin,z=%fin\n',x,y,z)
printf('The projection of v on n at t=4s is %fin/s',a)
