clc
clear
//input data
W=980//The weight of the object being dropped by parachute in N
C=5//The maximum terminal velocity of dropping in m/s
d=1.22//The density of the air in kg/m^3
Cd=1.3//The drag coefficient of the parachute

//calculations
A=W/(Cd*d*((C^2)/2))//The area of cross section in m^2
D=((A*4)/(3.14))^(1/2)//Diameter of the parachute in m

//output
printf('The required diameter of the parachute is %3.2f m',D)
