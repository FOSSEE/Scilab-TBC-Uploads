// Initilization of variables
w=75 // kg/m // mass per unit length of thw pipe
l=20 // m // dist between A &  B
g=9.81 // m/s^2 // acc due to gravity
y=2 // m // position of C below B
// Calculations
// Let x_b be the distance of point C from B 
// In eq'n x_b^2+32*x_b-320=0
a=1
b=32
c=-320
x_b=(-b+sqrt(b^2-(4*a*c)))/(2*a) // m // we get x_b by equating eqn's 1&2
// Now tension T_0
T_0=((w*g*x_b^2)/(2*y))*(10^-3) //kN // from eq'n 1
// Now the max tension occurs at point A,hence x is given as,
x=20-x_b // m
w_x=w*g*x*10^(-3) // kN 
T_max=sqrt((T_0)^2+(w_x)^2) // kN // Maximum Tension
// Results
clc
printf('The lowest point C which is situated at a distance (x_b) from support B is %f m \n',x_b)
printf('The maximum tension (T_max) in the cable is %f kN \n',T_max)
printf('The minimum tension (T_0) in the cable is %f kN \n',T_0)
