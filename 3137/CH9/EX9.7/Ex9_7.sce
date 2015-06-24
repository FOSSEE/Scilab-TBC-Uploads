//Initilization of variables
m1=40 //kg
m2=13.5 //kg
mu=1/3 //coefficient of friction
g=9.81 //m/s^2
//Calculations
//Solving by substitution
//After simplification we get
x=mu*m2*g
y=mu*(m1*g+m2*g)
theta=atand((x+y)/(m1*g)) //degrees
//Result
clc
printf('The value of the angle is %f degrees',theta) 
