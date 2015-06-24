//Initilization of variables
x=2 
y=-4
z=1
F=100 //N
//Calculation
thetax=x/sqrt(x^2+y^2+z^2) //radians
thetay=y/sqrt(x^2+y^2+z^2) //radians
thetaz=z/sqrt(x^2+y^2+z^2) //radians
P_x=F*thetax //N
P_y=F*thetay //N
P_z=F*thetaz //N
//Result
clc
printf('The vector P is:%fi%fj+%fk N',P_x,P_y,P_z) //N
