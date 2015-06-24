//Initilization of variables
x=4 //m
y=3 //m
z=2 //m
F=50 //N
//Calculations
OP=sqrt(x^2+y^2+z^2) //m
thetax=(x/OP) //radians
thetay=(y/OP) //Radians
thetaz=(z/OP) //radians
P_x=F*(thetax) //N
P_y=F*(thetay) //N
P_z=F*(thetaz) //N
//Result
clc
printf('The vector P is:%fi+%fj+%fk N',P_x,P_y,P_z) //N
