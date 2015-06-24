// Initilization of variables
s=1 // m
mu=0.192 // coefficient of static friction
g=9.81 // m/s^2
// Calculations
// The maximum angle of the inclined plane is given as,
theta=atand(3*mu) // degree
a=(2/3)*g*sind(theta) // m/s^2 // by solving eq'n 4
v=sqrt(2*a*s) // m/s
// Let the acceleration at the centre be A which is given as,
A=g*sind(theta) // m/s^2 // from eq'n 1
// Results
clc
printf('(a) The acceleration at the centre is %f m/s^2 \n',A)
printf('(b) The maximum angle of the inclined plane is %f degree \n',theta)
