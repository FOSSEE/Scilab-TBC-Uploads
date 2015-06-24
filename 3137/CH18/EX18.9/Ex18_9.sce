//Initilization of variables
m=10 //kg
theta=30 //degrees
u=0.3 //coefficient of kinetic friction
t=5 //s
g=9.8 //m/s^2
//Calculations
//Asthere is no motion in the vertical direction 
//Summing forces along vertical direction
Na=m*g*cosd(theta) //N
//Using impulse momentum theorem
vx=(m*g*sind(theta)-u*Na)*(t/m) //m/s
//Result
clc
printf('The spedd after 5s is %f m/s',vx)
